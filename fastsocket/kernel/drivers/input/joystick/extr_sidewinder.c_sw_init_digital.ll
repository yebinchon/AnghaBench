; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_sidewinder.c_sw_init_digital.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_sidewinder.c_sw_init_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@__const.sw_init_digital.seq = private unnamed_addr constant [4 x i32] [i32 140, i32 865, i32 440, i32 0], align 16
@SW_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @sw_init_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_digital(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %7 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.sw_init_digital.seq to i8*), i64 16, i1 false)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load %struct.gameport*, %struct.gameport** %2, align 8
  %12 = call i32 @gameport_trigger(%struct.gameport* %11)
  %13 = load %struct.gameport*, %struct.gameport** %2, align 8
  %14 = load i32, i32* @SW_TIMEOUT, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = call i32 @gameport_time(%struct.gameport* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %27, %10
  %18 = load %struct.gameport*, %struct.gameport** %2, align 8
  %19 = call i32 @gameport_read(%struct.gameport* %18)
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  br label %17

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @udelay(i32 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %10, label %43

43:                                               ; preds = %36
  %44 = load %struct.gameport*, %struct.gameport** %2, align 8
  %45 = call i32 @gameport_trigger(%struct.gameport* %44)
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @local_irq_restore(i64 %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @gameport_trigger(%struct.gameport*) #2

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #2

declare dso_local i32 @gameport_read(%struct.gameport*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @local_irq_restore(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
