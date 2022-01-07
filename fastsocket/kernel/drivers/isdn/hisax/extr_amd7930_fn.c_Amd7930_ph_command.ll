; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_ph_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_ph_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AMD7930: %s: ph_command 0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32, i8*)* @Amd7930_ph_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Amd7930_ph_command(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @L1_DEB_ISAC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @debugl1(%struct.IsdnCardState* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @wByteAMD(%struct.IsdnCardState* %24, i32 163, i32 %25)
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i8*, i32) #1

declare dso_local i32 @wByteAMD(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
