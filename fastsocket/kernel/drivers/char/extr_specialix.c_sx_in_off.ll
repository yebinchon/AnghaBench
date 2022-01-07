; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_in_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_in_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i16, i64 }

@SX_ADDR_REG = common dso_local global i64 0, align 8
@SX_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.specialix_board*, i16)* @sx_in_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @sx_in_off(%struct.specialix_board* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.specialix_board*, align 8
  %4 = alloca i16, align 2
  store %struct.specialix_board* %0, %struct.specialix_board** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %7 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %6, i32 0, i32 0
  store i16 %5, i16* %7, align 8
  %8 = load i16, i16* %4, align 2
  %9 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %10 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SX_ADDR_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i16 zeroext %8, i64 %13)
  %15 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %16 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SX_DATA_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call zeroext i8 @inb(i64 %19)
  ret i8 %20
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
