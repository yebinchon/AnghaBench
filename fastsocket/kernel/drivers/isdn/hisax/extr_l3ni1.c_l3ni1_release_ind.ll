; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_release_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_release_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.l3_process*)* }
%struct.sk_buff = type { i32*, i32 }

@IE_CALL_STATE = common dso_local global i32 0, align 4
@CC_RELEASE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@CC_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_release_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_release_ind(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IE_CALL_STATE, align 4
  %20 = call i32* @findie(i32* %15, i32 %18, i32 %19, i32 0)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %25, align 4
  %28 = icmp eq i32 1, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %38 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_5__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_5__*, i32, %struct.l3_process*)** %41, align 8
  %43 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %44 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @CC_RELEASE, align 4
  %47 = load i32, i32* @INDICATION, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %50 = call i32 %42(%struct.TYPE_5__* %45, i32 %48, %struct.l3_process* %49)
  %51 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %52 = call i32 @newl3state(%struct.l3_process* %51, i32 0)
  %53 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %54 = call i32 @ni1_release_l3_process(%struct.l3_process* %53)
  br label %70

55:                                               ; preds = %33
  %56 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %57 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_5__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_5__*, i32, %struct.l3_process*)** %60, align 8
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @CC_IGNORE, align 4
  %66 = load i32, i32* @INDICATION, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %69 = call i32 %61(%struct.TYPE_5__* %64, i32 %67, %struct.l3_process* %68)
  br label %70

70:                                               ; preds = %55, %36
  ret void
}

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @ni1_release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
