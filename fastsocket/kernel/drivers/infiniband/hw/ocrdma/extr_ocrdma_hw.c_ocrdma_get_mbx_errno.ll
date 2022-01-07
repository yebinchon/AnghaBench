; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_mbx_errno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_mbx_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_ASTATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_ASTATUS_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ocrdma_get_mbx_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_get_mbx_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @EFAULT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @OCRDMA_MBX_RSP_STATUS_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @OCRDMA_MBX_RSP_STATUS_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @OCRDMA_MBX_RSP_ASTATUS_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @OCRDMA_MBX_RSP_ASTATUS_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %37 [
    i32 142, label %19
    i32 146, label %19
    i32 152, label %22
    i32 158, label %22
    i32 149, label %22
    i32 151, label %22
    i32 159, label %22
    i32 145, label %22
    i32 150, label %22
    i32 138, label %22
    i32 139, label %22
    i32 161, label %22
    i32 153, label %22
    i32 155, label %22
    i32 148, label %22
    i32 156, label %22
    i32 157, label %22
    i32 160, label %22
    i32 154, label %22
    i32 163, label %22
    i32 130, label %22
    i32 128, label %22
    i32 140, label %25
    i32 137, label %25
    i32 143, label %25
    i32 144, label %25
    i32 136, label %28
    i32 133, label %28
    i32 135, label %28
    i32 129, label %28
    i32 141, label %28
    i32 147, label %28
    i32 134, label %28
    i32 132, label %28
    i32 131, label %28
    i32 162, label %31
  ]

19:                                               ; preds = %1, %1
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %1, %1, %1, %1
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %29 = load i32, i32* @ENOBUFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %36 [
    i32 164, label %33
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %33
  br label %37

37:                                               ; preds = %1, %36
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %28, %25, %22, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
