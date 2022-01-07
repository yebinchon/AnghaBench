; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_recv_slave_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_recv_slave_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }
%struct.dvb_diseqc_slave_reply = type { i32, i8** }

@DISRX_ST0 = common dso_local global i32 0, align 4
@RX_END_FIELD = common dso_local global i32 0, align 4
@FIFO_BYTENBR_FIELD = common dso_local global i32 0, align 4
@DISRXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @stv090x_recv_slave_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_recv_slave_reply(%struct.dvb_frontend* %0, %struct.dvb_diseqc_slave_reply* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_slave_reply* %1, %struct.dvb_diseqc_slave_reply** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %10, align 8
  store %struct.stv090x_state* %11, %struct.stv090x_state** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %20, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 10
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = call i32 @msleep(i32 10)
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %25 = load i32, i32* @DISRX_ST0, align 4
  %26 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RX_END_FIELD, align 4
  %30 = call i8* @STV090x_GETFIELD_Px(i32 %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %8, align 4
  br label %12

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FIFO_BYTENBR_FIELD, align 4
  %38 = call i8* @STV090x_GETFIELD_Px(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %58, %35
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %50 = load i32, i32* @DISRXDATA, align 4
  %51 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %49, i32 %50)
  %52 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %42

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %32
  ret i32 0
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i8* @STV090x_GETFIELD_Px(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
