; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24123_state* }
%struct.cx24123_state = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @cx24123_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %5 = alloca %struct.cx24123_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %10, align 8
  store %struct.cx24123_state* %11, %struct.cx24123_state** %5, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %14 = call i32 @cx24123_readreg(%struct.cx24123_state* %13, i32 41)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, -81
  %22 = call i32 @cx24123_writereg(%struct.cx24123_state* %19, i32 41, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %25 = call i32 @cx24123_wait_for_diseqc(%struct.cx24123_state* %24)
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %28 = call i32 @cx24123_readreg(%struct.cx24123_state* %27, i32 42)
  %29 = and i32 %28, 251
  %30 = call i32 @cx24123_writereg(%struct.cx24123_state* %26, i32 42, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %23
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 44, %39
  %41 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx24123_writereg(%struct.cx24123_state* %38, i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %54 = call i32 @cx24123_readreg(%struct.cx24123_state* %53, i32 41)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 144
  %58 = or i32 %57, 64
  %59 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 3
  %63 = and i32 %62, 3
  %64 = or i32 %58, %63
  %65 = call i32 @cx24123_writereg(%struct.cx24123_state* %55, i32 41, i32 %64)
  %66 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %67 = call i32 @cx24123_wait_for_diseqc(%struct.cx24123_state* %66)
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 16
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %52
  %72 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, -65
  %75 = call i32 @cx24123_writereg(%struct.cx24123_state* %72, i32 41, i32 %74)
  br label %76

76:                                               ; preds = %71, %52
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_wait_for_diseqc(%struct.cx24123_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
