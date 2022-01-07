; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_lancer_provisioning_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_lancer_provisioning_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64 }

@SLIPORT_STATUS_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_STATUS_ERR_MASK = common dso_local global i32 0, align 4
@SLIPORT_ERROR1_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_ERROR2_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_ERROR_NO_RESOURCE1 = common dso_local global i32 0, align 4
@SLIPORT_ERROR_NO_RESOURCE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @lancer_provisioning_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lancer_provisioning_error(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SLIPORT_STATUS_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SLIPORT_ERROR1_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SLIPORT_ERROR2_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ioread32(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SLIPORT_ERROR_NO_RESOURCE1, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SLIPORT_ERROR_NO_RESOURCE2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %40

38:                                               ; preds = %33, %17
  br label %39

39:                                               ; preds = %38, %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
