; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i16, i64 }

@SX_ADDR_REG = common dso_local global i64 0, align 8
@SX_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.specialix_board*, i16, i8)* @sx_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_out(%struct.specialix_board* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.specialix_board*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.specialix_board* %0, %struct.specialix_board** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = or i32 %8, 128
  %10 = trunc i32 %9 to i16
  %11 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %12 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %11, i32 0, i32 0
  store i16 %10, i16* %12, align 8
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %14, 128
  %16 = trunc i32 %15 to i8
  %17 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %18 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SX_ADDR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %16, i64 %21)
  %23 = load i8, i8* %6, align 1
  %24 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %25 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SX_DATA_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i8 zeroext %23, i64 %28)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
