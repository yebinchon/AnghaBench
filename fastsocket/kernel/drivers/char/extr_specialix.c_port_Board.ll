; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_port_Board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_port_Board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32 }
%struct.specialix_port = type { i32 }

@sx_board = common dso_local global %struct.specialix_board* null, align 8
@sx_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.specialix_board* (%struct.specialix_port*)* @port_Board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.specialix_board* @port_Board(%struct.specialix_port* %0) #0 {
  %2 = alloca %struct.specialix_port*, align 8
  store %struct.specialix_port* %0, %struct.specialix_port** %2, align 8
  %3 = load %struct.specialix_board*, %struct.specialix_board** @sx_board, align 8
  %4 = load %struct.specialix_port*, %struct.specialix_port** %2, align 8
  %5 = load i32, i32* @sx_port, align 4
  %6 = sext i32 %5 to i64
  %7 = sub i64 0, %6
  %8 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %4, i64 %7
  %9 = call i64 @SX_BOARD(%struct.specialix_port* %8)
  %10 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %3, i64 %9
  ret %struct.specialix_board* %10
}

declare dso_local i64 @SX_BOARD(%struct.specialix_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
