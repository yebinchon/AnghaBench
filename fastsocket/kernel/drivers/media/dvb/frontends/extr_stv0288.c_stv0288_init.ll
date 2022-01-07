; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0288_state* }
%struct.stv0288_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"stv0288: init chip\0A\00", align 1
@stv0288_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0288_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0288_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0288_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv0288_state*, %struct.stv0288_state** %8, align 8
  store %struct.stv0288_state* %9, %struct.stv0288_state** %3, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %12 = call i32 @stv0288_writeregI(%struct.stv0288_state* %11, i32 65, i32 4)
  %13 = call i32 @msleep(i32 50)
  %14 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %15 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32*, i32** @stv0288_inittab, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32*, i32** @stv0288_inittab, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i1 [ false, %21 ], [ %35, %28 ]
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %41 = load i32*, i32** @stv0288_inittab, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @stv0288_inittab, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @stv0288_writeregI(%struct.stv0288_state* %40, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %4, align 4
  br label %21

56:                                               ; preds = %36
  br label %93

57:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %60 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %69 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 255
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %92

84:                                               ; preds = %80, %58
  %85 = load %struct.stv0288_state*, %struct.stv0288_state** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @stv0288_writeregI(%struct.stv0288_state* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %4, align 4
  br label %58

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %56
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @stv0288_writeregI(%struct.stv0288_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
