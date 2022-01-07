; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_send_diseqc_burst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_send_diseqc_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DISTXCTL = common dso_local global i32 0, align 4
@SEC_MINI_A = common dso_local global i64 0, align 8
@DISTX_MODE_FIELD = common dso_local global i32 0, align 4
@DISEQC_RESET_FIELD = common dso_local global i32 0, align 4
@DIS_PRECHARGE_FIELD = common dso_local global i32 0, align 4
@DISTXSTATUS = common dso_local global i32 0, align 4
@FIFO_FULL_FIELD = common dso_local global i32 0, align 4
@DISTXDATA = common dso_local global i32 0, align 4
@TX_IDLE_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @stv090x_send_diseqc_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_send_diseqc_burst(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stv090x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %14, align 8
  store %struct.stv090x_state* %15, %struct.stv090x_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %17 = load i32, i32* @DISTXCTL, align 4
  %18 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SEC_MINI_A, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %24 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 5, i32 3
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %33 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 4, i32 2
  store i32 %39, i32* %10, align 4
  store i32 255, i32* %11, align 4
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DISTX_MODE_FIELD, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @STV090x_SETFIELD_Px(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %47 = call i32 @STV090x_SETFIELD_Px(i32 %45, i32 %46, i32 1)
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %49 = load i32, i32* @DISTXCTL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %48, i32 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %125

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %57 = call i32 @STV090x_SETFIELD_Px(i32 %55, i32 %56, i32 0)
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %59 = load i32, i32* @DISTXCTL, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %58, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %125

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @DIS_PRECHARGE_FIELD, align 4
  %67 = call i32 @STV090x_SETFIELD_Px(i32 %65, i32 %66, i32 1)
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %69 = load i32, i32* @DISTXCTL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %68, i32 %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %125

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %78, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %80 = load i32, i32* @DISTXSTATUS, align 4
  %81 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @FIFO_FULL_FIELD, align 4
  %84 = call i32 @STV090x_GETFIELD_Px(i32 %82, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %75

85:                                               ; preds = %75
  %86 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %87 = load i32, i32* @DISTXDATA, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %86, i32 %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %125

92:                                               ; preds = %85
  %93 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %94 = load i32, i32* @DISTXCTL, align 4
  %95 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DIS_PRECHARGE_FIELD, align 4
  %98 = call i32 @STV090x_SETFIELD_Px(i32 %96, i32 %97, i32 0)
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %100 = load i32, i32* @DISTXCTL, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %99, i32 %100, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %125

105:                                              ; preds = %92
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %114, %105
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 10
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %124

114:                                              ; preds = %112
  %115 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %116 = load i32, i32* @DISTXSTATUS, align 4
  %117 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @TX_IDLE_FIELD, align 4
  %120 = call i32 @STV090x_GETFIELD_Px(i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = call i32 @msleep(i32 10)
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %106

124:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %128

125:                                              ; preds = %104, %91, %73, %63, %53
  %126 = load i32, i32* @FE_ERROR, align 4
  %127 = call i32 @dprintk(i32 %126, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
