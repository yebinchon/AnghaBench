; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"-E-  DiB3000MC/P: wrong Vendor ID (read=0x%x)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"-E-  DiB3000MC/P: wrong Device ID (%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"-I-  found DiB3000MC/P: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000mc_state*)* @dib3000mc_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_identify(%struct.dib3000mc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib3000mc_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %3, align 8
  %5 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %6 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %5, i32 1025)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 435
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @EREMOTEIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %15 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %14, i32 1026)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 12289
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 12290
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EREMOTEIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %29 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %31 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %21, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
