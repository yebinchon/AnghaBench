; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_h_memstick_read_dev_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_h_memstick_read_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, i32, %struct.TYPE_2__, %struct.memstick_request }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.memstick_request = type { i32, i32 }
%struct.ms_id_register = type { i32, i32, i32, i32 }

@MS_TPC_READ_REG = common dso_local global i32 0, align 4
@MEMSTICK_MATCH_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"if_mode = %02x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_memstick_read_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_memstick_read_dev_id(%struct.memstick_dev* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  %6 = alloca %struct.ms_id_register, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %7 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %8 = load %struct.memstick_request*, %struct.memstick_request** %7, align 8
  %9 = icmp ne %struct.memstick_request* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %12 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %11, i32 0, i32 3
  %13 = load i32, i32* @MS_TPC_READ_REG, align 4
  %14 = call i32 @memstick_init_req(%struct.memstick_request* %12, i32 %13, i32* null, i32 16)
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %16 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %15, i32 0, i32 3
  %17 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  store %struct.memstick_request* %16, %struct.memstick_request** %17, align 8
  store i32 0, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %20 = load %struct.memstick_request*, %struct.memstick_request** %19, align 8
  %21 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %18
  %25 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %26 = load %struct.memstick_request*, %struct.memstick_request** %25, align 8
  %27 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(%struct.ms_id_register* %6, i32 %28, i32 16)
  %30 = load i32, i32* @MEMSTICK_MATCH_ALL, align 4
  %31 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %32 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %6, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %37 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %6, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %42 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %47 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %50 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %24, %18
  %55 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %56 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %55, i32 0, i32 0
  %57 = call i32 @complete(i32* %56)
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.ms_id_register*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
