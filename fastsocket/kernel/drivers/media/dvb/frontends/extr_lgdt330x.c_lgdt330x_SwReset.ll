; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt330x.c_lgdt330x_SwReset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt330x.c_lgdt330x_SwReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt330x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt330x_state*)* @lgdt330x_SwReset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt330x_SwReset(%struct.lgdt330x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt330x_state*, align 8
  store %struct.lgdt330x_state* %0, %struct.lgdt330x_state** %3, align 8
  %4 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %3, align 8
  %5 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %3, align 8
  %11 = call i32 @lgdt3302_SwReset(%struct.lgdt330x_state* %10)
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %3, align 8
  %14 = call i32 @lgdt3303_SwReset(%struct.lgdt330x_state* %13)
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @lgdt3302_SwReset(%struct.lgdt330x_state*) #1

declare dso_local i32 @lgdt3303_SwReset(%struct.lgdt330x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
