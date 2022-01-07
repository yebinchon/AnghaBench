; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GF2K_START = common dso_local global i32 0, align 4
@GF2K_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32, i8*)* @gf2k_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf2k_read_packet(%struct.gameport* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.gameport*, %struct.gameport** %4, align 8
  %14 = load i32, i32* @GF2K_START, align 4
  %15 = call i32 @gameport_time(%struct.gameport* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.gameport*, %struct.gameport** %4, align 8
  %17 = load i32, i32* @GF2K_STROBE, align 4
  %18 = call i32 @gameport_time(%struct.gameport* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load %struct.gameport*, %struct.gameport** %4, align 8
  %22 = call i32 @gameport_trigger(%struct.gameport* %21)
  %23 = load %struct.gameport*, %struct.gameport** %4, align 8
  %24 = call zeroext i8 @gameport_read(%struct.gameport* %23)
  store i8 %24, i8* %8, align 1
  br label %25

25:                                               ; preds = %59, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %60

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %10, align 4
  %37 = load i8, i8* %8, align 1
  store i8 %37, i8* %7, align 1
  %38 = load %struct.gameport*, %struct.gameport** %4, align 8
  %39 = call zeroext i8 @gameport_read(%struct.gameport* %38)
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 5
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %48, %34
  br label %25

60:                                               ; preds = %32
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
