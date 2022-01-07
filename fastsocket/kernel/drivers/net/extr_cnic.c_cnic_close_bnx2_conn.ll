; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_close_bnx2_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_close_bnx2_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 }

@L4_KCQE_OPCODE_VALUE_RESET_RECEIVED = common dso_local global i32 0, align 4
@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_sock*, i32)* @cnic_close_bnx2_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_close_bnx2_conn(%struct.cnic_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %7, i32 0, i32 2
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  store %struct.cnic_dev* %9, %struct.cnic_dev** %5, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 0
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @L4_KCQE_OPCODE_VALUE_RESET_RECEIVED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %18 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cnic_cm_upcall(%struct.cnic_local* %17, %struct.cnic_sock* %18, i32 %19)
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @SK_F_CONNECT_START, align 4
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %27 = call i32 @cnic_close_conn(%struct.cnic_sock* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %30 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %32 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @cnic_cm_upcall(%struct.cnic_local* %31, %struct.cnic_sock* %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cnic_close_conn(%struct.cnic_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
