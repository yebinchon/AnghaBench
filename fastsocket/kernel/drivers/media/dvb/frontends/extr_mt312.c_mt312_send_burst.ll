; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_send_burst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt312_state* }
%struct.mt312_state = type { i32 }

@__const.mt312_send_burst.mini_tab = private unnamed_addr constant [2 x i32] [i32 2, i32 3], align 4
@SEC_MINI_B = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DISEQC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @mt312_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_send_burst(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mt312_state*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.mt312_state*, %struct.mt312_state** %11, align 8
  store %struct.mt312_state* %12, %struct.mt312_state** %6, align 8
  %13 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.mt312_send_burst.mini_tab to i8*), i64 8, i1 false)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SEC_MINI_B, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.mt312_state*, %struct.mt312_state** %6, align 8
  %22 = load i32, i32* @DISEQC_MODE, align 4
  %23 = call i32 @mt312_readreg(%struct.mt312_state* %21, i32 %22, i32* %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.mt312_state*, %struct.mt312_state** %6, align 8
  %30 = load i32, i32* @DISEQC_MODE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 64
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = call i32 @mt312_writereg(%struct.mt312_state* %29, i32 %30, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %26, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mt312_readreg(%struct.mt312_state*, i32, i32*) #2

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
