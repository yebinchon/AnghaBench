; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32 }

@MAX_CM_SK_TBL_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_RANGE = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_alloc_mem(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %4, align 8
  %9 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kzalloc(i32 %12, i32 %13)
  %15 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = call i32 (...) @random32()
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @CNIC_LOCAL_PORT_RANGE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %30 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %29, i32 0, i32 0
  %31 = load i32, i32* @CNIC_LOCAL_PORT_RANGE, align 4
  %32 = load i32, i32* @CNIC_LOCAL_PORT_MIN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @cnic_init_id_tbl(i32* %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %38 = call i32 @cnic_cm_free_mem(%struct.cnic_dev* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @random32(...) #1

declare dso_local i64 @cnic_init_id_tbl(i32*, i32, i32, i32) #1

declare dso_local i32 @cnic_cm_free_mem(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
