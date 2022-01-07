; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_setsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_setsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { i32 }

@hi_op = common dso_local global i32 0, align 4
@OP_DTR = common dso_local global i32 0, align 4
@OP_RTS = common dso_local global i32 0, align 4
@SX_DEBUG_MODEMSIGNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setsignals: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sx_port*, i32, i32)* @sx_setsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_setsignals(%struct.sx_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sx_port* %0, %struct.sx_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @func_enter2()
  %9 = load %struct.sx_port*, %struct.sx_port** %4, align 8
  %10 = load i32, i32* @hi_op, align 4
  %11 = call i32 @sx_read_channel_byte(%struct.sx_port* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @OP_DTR, align 4
  %20 = or i32 %18, %19
  br label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OP_DTR, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %20, %17 ], [ %25, %21 ]
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @OP_RTS, align 4
  %37 = or i32 %35, %36
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @OP_RTS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i32 [ %37, %34 ], [ %42, %38 ]
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %28
  %46 = load %struct.sx_port*, %struct.sx_port** %4, align 8
  %47 = load i32, i32* @hi_op, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sx_write_channel_byte(%struct.sx_port* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @SX_DEBUG_MODEMSIGNALS, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sx_dprintk(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter2(...) #1

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @sx_write_channel_byte(%struct.sx_port*, i32, i32) #1

declare dso_local i32 @sx_dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
