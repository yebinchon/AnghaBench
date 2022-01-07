; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_uPD98402.c_set_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_uPD98402.c_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MDR = common dso_local global i32 0, align 4
@uPD98402_MDR_TPLP = common dso_local global i8 0, align 1
@uPD98402_MDR_ALP = common dso_local global i8 0, align 1
@uPD98402_MDR_RPLP = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32)* @set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_loopback(%struct.atm_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @MDR, align 4
  %8 = call zeroext i8 @GET(i32 %7)
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @uPD98402_MDR_TPLP, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @uPD98402_MDR_ALP, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @uPD98402_MDR_RPLP, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %9, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__ATM_LM_XTLOC(i32 %21)
  switch i32 %22, label %38 [
    i32 129, label %23
    i32 128, label %24
    i32 130, label %31
  ]

23:                                               ; preds = %2
  br label %41

24:                                               ; preds = %2
  %25 = load i8, i8* @uPD98402_MDR_TPLP, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %41

31:                                               ; preds = %2
  %32 = load i8, i8* @uPD98402_MDR_ALP, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %31, %24, %23
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @__ATM_LM_XTRMT(i32 %42)
  switch i32 %43, label %52 [
    i32 129, label %44
    i32 128, label %45
  ]

44:                                               ; preds = %41
  br label %55

45:                                               ; preds = %41
  %46 = load i8, i8* @uPD98402_MDR_RPLP, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %6, align 1
  br label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %45, %44
  %56 = load i8, i8* %6, align 1
  %57 = load i32, i32* @MDR, align 4
  %58 = call i32 @PUT(i8 zeroext %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %61 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %52, %38
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local zeroext i8 @GET(i32) #1

declare dso_local i32 @__ATM_LM_XTLOC(i32) #1

declare dso_local i32 @__ATM_LM_XTRMT(i32) #1

declare dso_local i32 @PUT(i8 zeroext, i32) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
