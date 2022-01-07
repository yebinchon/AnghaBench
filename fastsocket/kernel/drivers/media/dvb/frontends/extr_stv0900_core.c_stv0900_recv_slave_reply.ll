; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_recv_slave_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_recv_slave_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { i32 }
%struct.dvb_diseqc_slave_reply = type { i32, i32* }

@RX_END = common dso_local global i32 0, align 4
@FIFO_BYTENBR = common dso_local global i32 0, align 4
@DISRXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @stv0900_recv_slave_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_recv_slave_reply(%struct.dvb_frontend* %0, %struct.dvb_diseqc_slave_reply* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %5 = alloca %struct.stv0900_state*, align 8
  %6 = alloca %struct.stv0900_internal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_slave_reply* %1, %struct.dvb_diseqc_slave_reply** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv0900_state*, %struct.stv0900_state** %10, align 8
  store %struct.stv0900_state* %11, %struct.stv0900_state** %5, align 8
  %12 = load %struct.stv0900_state*, %struct.stv0900_state** %5, align 8
  %13 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %12, i32 0, i32 1
  %14 = load %struct.stv0900_internal*, %struct.stv0900_internal** %13, align 8
  store %struct.stv0900_internal* %14, %struct.stv0900_internal** %6, align 8
  %15 = load %struct.stv0900_state*, %struct.stv0900_state** %5, align 8
  %16 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %30, %2
  %21 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %22 = load i32, i32* @RX_END, align 4
  %23 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %21, i32 %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 10
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ false, %20 ], [ %27, %25 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = call i32 @msleep(i32 10)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %20

34:                                               ; preds = %28
  %35 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %36 = load i32, i32* @RX_END, align 4
  %37 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %41 = load i32, i32* @FIFO_BYTENBR, align 4
  %42 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %40, i32 %41)
  %43 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %61, %39
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.stv0900_internal*, %struct.stv0900_internal** %6, align 8
  %53 = load i32, i32* @DISRXDATA, align 4
  %54 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %52, i32 %53)
  %55 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %45

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %34
  ret i32 0
}

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
