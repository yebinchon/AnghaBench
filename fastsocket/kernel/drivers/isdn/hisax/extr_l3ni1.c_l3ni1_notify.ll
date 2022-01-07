; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@IE_NOTIFY = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"notify error %d\00", align 1
@ie_NOTIFY = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@CC_NOTIFY = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_notify(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IE_NOTIFY, align 4
  %19 = call i32* @findie(i32 %14, i32 %17, i32 %18, i32 0)
  store i32* %19, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 100, i32* %29, align 8
  br label %40

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %35 [
    i32 128, label %34
    i32 129, label %34
    i32 130, label %34
  ]

34:                                               ; preds = %30, %30, %30
  br label %39

35:                                               ; preds = %30
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 100, i32* %38, align 8
  store i32 2, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %34
  br label %40

40:                                               ; preds = %39, %26
  br label %45

41:                                               ; preds = %3
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 96, i32* %44, align 8
  store i32 3, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %50 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @L3_DEB_WARN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %57 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @l3_debug(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @l3ni1_status_send(%struct.l3_process* %62, i32 %63, i32* null)
  br label %95

65:                                               ; preds = %45
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @ie_NOTIFY, align 4
  %69 = call i32 @check_infoelements(%struct.l3_process* %66, %struct.sk_buff* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @l3ni1_std_ie_err(%struct.l3_process* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %82 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %85, align 8
  %87 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %88 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* @CC_NOTIFY, align 4
  %91 = load i32, i32* @INDICATION, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %94 = call i32 %86(%struct.TYPE_7__* %89, i32 %92, %struct.l3_process* %93)
  br label %95

95:                                               ; preds = %61, %80, %76
  ret void
}

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @l3ni1_status_send(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3ni1_std_ie_err(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
