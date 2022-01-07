; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_reg = type { i32, i32 }
%struct.dvb_frontend = type { %struct.lgdt3305_state* }
%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@lgdt3305_init.lgdt3304_init_data = internal global [29 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i32 136, i32 3 }, %struct.lgdt3305_reg { i32 13, i32 2 }, %struct.lgdt3305_reg { i32 14, i32 2 }, %struct.lgdt3305_reg { i32 140, i32 50 }, %struct.lgdt3305_reg { i32 139, i32 196 }, %struct.lgdt3305_reg { i32 144, i32 0 }, %struct.lgdt3305_reg { i32 143, i32 0 }, %struct.lgdt3305_reg { i32 142, i32 0 }, %struct.lgdt3305_reg { i32 141, i32 0 }, %struct.lgdt3305_reg { i32 145, i32 249 }, %struct.lgdt3305_reg { i32 274, i32 23 }, %struct.lgdt3305_reg { i32 275, i32 21 }, %struct.lgdt3305_reg { i32 276, i32 24 }, %struct.lgdt3305_reg { i32 277, i32 255 }, %struct.lgdt3305_reg { i32 278, i32 60 }, %struct.lgdt3305_reg { i32 532, i32 103 }, %struct.lgdt3305_reg { i32 1060, i32 141 }, %struct.lgdt3305_reg { i32 1063, i32 18 }, %struct.lgdt3305_reg { i32 1064, i32 79 }, %struct.lgdt3305_reg { i32 132, i32 128 }, %struct.lgdt3305_reg { i32 131, i32 0 }, %struct.lgdt3305_reg { i32 778, i32 8 }, %struct.lgdt3305_reg { i32 779, i32 155 }, %struct.lgdt3305_reg { i32 781, i32 0 }, %struct.lgdt3305_reg { i32 782, i32 28 }, %struct.lgdt3305_reg { i32 788, i32 225 }, %struct.lgdt3305_reg { i32 13, i32 130 }, %struct.lgdt3305_reg { i32 128, i32 91 }, %struct.lgdt3305_reg { i32 128, i32 91 }], align 16
@lgdt3305_init.lgdt3305_init_data = internal global [24 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i32 136, i32 3 }, %struct.lgdt3305_reg { i32 135, i32 176 }, %struct.lgdt3305_reg { i32 134, i32 1 }, %struct.lgdt3305_reg { i32 137, i32 111 }, %struct.lgdt3305_reg { i32 133, i32 3 }, %struct.lgdt3305_reg { i32 140, i32 50 }, %struct.lgdt3305_reg { i32 139, i32 196 }, %struct.lgdt3305_reg { i32 144, i32 0 }, %struct.lgdt3305_reg { i32 143, i32 0 }, %struct.lgdt3305_reg { i32 142, i32 0 }, %struct.lgdt3305_reg { i32 141, i32 0 }, %struct.lgdt3305_reg { i32 145, i32 121 }, %struct.lgdt3305_reg { i32 147, i32 50 }, %struct.lgdt3305_reg { i32 146, i32 196 }, %struct.lgdt3305_reg { i32 149, i32 13 }, %struct.lgdt3305_reg { i32 148, i32 48 }, %struct.lgdt3305_reg { i32 130, i32 128 }, %struct.lgdt3305_reg { i32 129, i32 0 }, %struct.lgdt3305_reg { i32 132, i32 128 }, %struct.lgdt3305_reg { i32 131, i32 0 }, %struct.lgdt3305_reg { i32 151, i32 48 }, %struct.lgdt3305_reg { i32 150, i32 97 }, %struct.lgdt3305_reg { i32 138, i32 255 }, %struct.lgdt3305_reg { i32 128, i32 27 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lgdt3305_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.lgdt3305_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  store %struct.lgdt3305_state* %7, %struct.lgdt3305_state** %3, align 8
  %8 = call i32 @lg_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %10 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 153, label %14
    i32 152, label %18
  ]

14:                                               ; preds = %1
  %15 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.lgdt3305_reg* getelementptr inbounds ([29 x %struct.lgdt3305_reg], [29 x %struct.lgdt3305_reg]* @lgdt3305_init.lgdt3304_init_data, i64 0, i64 0))
  %17 = call i32 @lgdt3305_write_regs(%struct.lgdt3305_state* %15, %struct.lgdt3305_reg* getelementptr inbounds ([29 x %struct.lgdt3305_reg], [29 x %struct.lgdt3305_reg]* @lgdt3305_init.lgdt3304_init_data, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.lgdt3305_reg* getelementptr inbounds ([24 x %struct.lgdt3305_reg], [24 x %struct.lgdt3305_reg]* @lgdt3305_init.lgdt3305_init_data, i64 0, i64 0))
  %21 = call i32 @lgdt3305_write_regs(%struct.lgdt3305_state* %19, %struct.lgdt3305_reg* getelementptr inbounds ([24 x %struct.lgdt3305_reg], [24 x %struct.lgdt3305_reg]* @lgdt3305_init.lgdt3305_init_data, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %18, %14
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @lg_fail(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %33

30:                                               ; preds = %25
  %31 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %32 = call i32 @lgdt3305_soft_reset(%struct.lgdt3305_state* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @lg_dbg(i8*) #1

declare dso_local i32 @lgdt3305_write_regs(%struct.lgdt3305_state*, %struct.lgdt3305_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lgdt3305_reg*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lgdt3305_soft_reset(%struct.lgdt3305_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
