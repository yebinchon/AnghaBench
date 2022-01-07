; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_ph_data_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_ph_data_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.teimgr = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*, i64)* }
%struct.TYPE_4__ = type { i32 }

@FLG_FIXED_TEI = common dso_local global i32 0, align 4
@debug = common dso_local global i32* null, align 8
@DEBUG_L2_TEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tei handler mt %x\00", align 1
@ID_ASSIGNED = common dso_local global i64 0, align 8
@EV_ASSIGN = common dso_local global i32 0, align 4
@ID_DENIED = common dso_local global i64 0, align 8
@EV_DENIED = common dso_local global i32 0, align 4
@ID_CHK_REQ = common dso_local global i64 0, align 8
@EV_CHKREQ = common dso_local global i32 0, align 4
@ID_REMOVE = common dso_local global i64 0, align 8
@EV_REMOVE = common dso_local global i32 0, align 4
@ID_VERIFY = common dso_local global i64 0, align 8
@EV_VERIFY = common dso_local global i32 0, align 4
@ID_CHK_RES = common dso_local global i64 0, align 8
@EV_CHKRESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.teimgr*, i64, i32*, i32)* @tei_ph_data_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_ph_data_ind(%struct.teimgr* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.teimgr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.teimgr* %0, %struct.teimgr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @FLG_FIXED_TEI, align 4
  %10 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %11 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %97

17:                                               ; preds = %4
  %18 = load i32*, i32** @debug, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DEBUG_L2_TEI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %25 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %26, align 8
  %28 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %29 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 %27(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ID_ASSIGNED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %38 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %37, i32 0, i32 0
  %39 = load i32, i32* @EV_ASSIGN, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %38, i32 %39, i32* %40)
  br label %97

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @ID_DENIED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %48 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %47, i32 0, i32 0
  %49 = load i32, i32* @EV_DENIED, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %48, i32 %49, i32* %50)
  br label %96

52:                                               ; preds = %42
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @ID_CHK_REQ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %58 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %57, i32 0, i32 0
  %59 = load i32, i32* @EV_CHKREQ, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %58, i32 %59, i32* %60)
  br label %95

62:                                               ; preds = %52
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @ID_REMOVE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %68 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %67, i32 0, i32 0
  %69 = load i32, i32* @EV_REMOVE, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %68, i32 %69, i32* %70)
  br label %94

72:                                               ; preds = %62
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @ID_VERIFY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %78 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %77, i32 0, i32 0
  %79 = load i32, i32* @EV_VERIFY, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %78, i32 %79, i32* %80)
  br label %93

82:                                               ; preds = %72
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @ID_CHK_RES, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.teimgr*, %struct.teimgr** %5, align 8
  %88 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %87, i32 0, i32 0
  %89 = load i32, i32* @EV_CHKRESP, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @mISDN_FsmEvent(%struct.TYPE_5__* %88, i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %86, %82
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %56
  br label %96

96:                                               ; preds = %95, %46
  br label %97

97:                                               ; preds = %16, %96, %36
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
