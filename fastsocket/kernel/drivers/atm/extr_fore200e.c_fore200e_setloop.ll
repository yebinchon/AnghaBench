; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_setloop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_setloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SUNI_MCT_DLE = common dso_local global i32 0, align 4
@SUNI_MCT_LLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUNI_MCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fore200e*, i32)* @fore200e_setloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_setloop(%struct.fore200e* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fore200e*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fore200e* %0, %struct.fore200e** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CAP_NET_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 130, label %21
    i32 128, label %23
  ]

17:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @SUNI_MCT_DLE, align 4
  %19 = load i32, i32* @SUNI_MCT_LLE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @SUNI_MCT_DLE, align 4
  store i32 %22, i32* %7, align 4
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @SUNI_MCT_LLE, align 4
  store i32 %24, i32* %7, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %23, %21, %17
  %29 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %30 = load i32, i32* @SUNI_MCT, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fore200e_set_oc3(%struct.fore200e* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %39 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %25, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @fore200e_set_oc3(%struct.fore200e*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
