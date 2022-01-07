; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_adapter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.c2wr_init_req = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.c2wr = type { i32 }

@CCWR_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*)* @c2_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_adapter_init(%struct.c2_dev* %0) #0 {
  %2 = alloca %struct.c2_dev*, align 8
  %3 = alloca %struct.c2wr_init_req, align 8
  %4 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %2, align 8
  %5 = call i32 @memset(%struct.c2wr_init_req* %3, i32 0, i32 56)
  %6 = load i32, i32* @CCWR_INIT, align 4
  %7 = call i32 @c2_wr_set_id(%struct.c2wr_init_req* %3, i32 %6)
  %8 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %11 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @cpu_to_be64(i32 %12)
  %14 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 5
  store i8* %13, i8** %14, align 8
  %15 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %16 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_be64(i32 %18)
  %20 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %22 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_be64(i32 %24)
  %26 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %28 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be64(i32 %30)
  %32 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %34 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be64(i32 %36)
  %38 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %40 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be64(i32 %42)
  %44 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %46 = bitcast %struct.c2wr_init_req* %3 to %union.c2wr*
  %47 = call i32 @vq_send_wr(%struct.c2_dev* %45, %union.c2wr* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.c2wr_init_req*, i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_init_req*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
