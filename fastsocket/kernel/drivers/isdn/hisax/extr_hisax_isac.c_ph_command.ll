; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_ph_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_ph_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i32, i32 (%struct.isac*, i32, i32)* }

@DBG_L1M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ph_command %#x\00", align 1
@ISAC_CIX0 = common dso_local global i32 0, align 4
@ISACSX_CIX0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i32)* @ph_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ph_command(%struct.isac* %0, i32 %1) #0 {
  %3 = alloca %struct.isac*, align 8
  %4 = alloca i32, align 4
  store %struct.isac* %0, %struct.isac** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @DBG_L1M, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DBG(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.isac*, %struct.isac** %3, align 8
  %9 = getelementptr inbounds %struct.isac, %struct.isac* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %31 [
    i32 129, label %11
    i32 128, label %21
  ]

11:                                               ; preds = %2
  %12 = load %struct.isac*, %struct.isac** %3, align 8
  %13 = getelementptr inbounds %struct.isac, %struct.isac* %12, i32 0, i32 1
  %14 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %13, align 8
  %15 = load %struct.isac*, %struct.isac** %3, align 8
  %16 = load i32, i32* @ISAC_CIX0, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 2
  %19 = or i32 %18, 3
  %20 = call i32 %14(%struct.isac* %15, i32 %16, i32 %19)
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.isac*, %struct.isac** %3, align 8
  %23 = getelementptr inbounds %struct.isac, %struct.isac* %22, i32 0, i32 1
  %24 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %23, align 8
  %25 = load %struct.isac*, %struct.isac** %3, align 8
  %26 = load i32, i32* @ISACSX_CIX0, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 4
  %29 = or i32 %28, 14
  %30 = call i32 %24(%struct.isac* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %2, %21, %11
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
