; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_t303.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_t303.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, %struct.l3_process*)* }

@MT_RELEASE_COMPLETE = common dso_local global i32 0, align 4
@CC_NOSETUP_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_t303 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_t303(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %8 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %13 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %17 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %16, i32 0, i32 2
  %18 = call i32 @L3DelTimer(i32* %17)
  %19 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @l3ni1_setup_req(%struct.l3_process* %19, i32 %20, i8* %21)
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %25 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %24, i32 0, i32 2
  %26 = call i32 @L3DelTimer(i32* %25)
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = load i32, i32* @MT_RELEASE_COMPLETE, align 4
  %29 = call i32 @l3ni1_message_cause(%struct.l3_process* %27, i32 %28, i32 102)
  %30 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %31 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_4__*, i32, %struct.l3_process*)** %34, align 8
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* @CC_NOSETUP_RSP, align 4
  %40 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %41 = call i32 %35(%struct.TYPE_4__* %38, i32 %39, %struct.l3_process* %40)
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = call i32 @ni1_release_l3_process(%struct.l3_process* %42)
  br label %44

44:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @l3ni1_setup_req(%struct.l3_process*, i32, i8*) #1

declare dso_local i32 @l3ni1_message_cause(%struct.l3_process*, i32, i32) #1

declare dso_local i32 @ni1_release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
