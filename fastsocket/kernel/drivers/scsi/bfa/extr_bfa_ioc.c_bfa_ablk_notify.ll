; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ablk_s = type { i32, i32 (i32, i32)*, i32, i32*, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_ablk_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ablk_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ablk_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_ablk_s*
  store %struct.bfa_ablk_s* %7, %struct.bfa_ablk_s** %5, align 8
  %8 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %9 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @bfa_trc(i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %50 [
    i32 129, label %14
    i32 130, label %22
    i32 128, label %22
  ]

14:                                               ; preds = %2
  %15 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BFA_FALSE, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  br label %52

22:                                               ; preds = %2, %2
  %23 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %30, i32 0, i32 1
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = icmp ne i32 (i32, i32)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %42 = call i32 %37(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %29
  %44 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %44, i32 0, i32 1
  store i32 (i32, i32)* null, i32 (i32, i32)** %45, align 8
  %46 = load i32, i32* @BFA_FALSE, align 4
  %47 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %22
  br label %52

50:                                               ; preds = %2
  %51 = call i32 @WARN_ON(i32 1)
  br label %52

52:                                               ; preds = %50, %49, %14
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
