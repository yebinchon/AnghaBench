; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_check_messagetype_validity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_check_messagetype_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@L3_DEB_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"l3ni1_check_messagetype_validity mt(%x) OK\00", align 1
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"l3ni1_check_messagetype_validity mt(%x) fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l3_process*, i32, i8*)* @l3ni1_check_messagetype_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l3ni1_check_messagetype_validity(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l3_process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %24 [
    i32 152, label %9
    i32 151, label %9
    i32 149, label %9
    i32 148, label %9
    i32 147, label %9
    i32 145, label %9
    i32 146, label %9
    i32 144, label %9
    i32 143, label %9
    i32 142, label %9
    i32 141, label %9
    i32 135, label %9
    i32 134, label %9
    i32 137, label %9
    i32 136, label %9
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
    i32 140, label %9
    i32 139, label %9
    i32 150, label %9
    i32 133, label %9
    i32 132, label %9
    i32 138, label %23
    i32 131, label %23
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %10 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %11 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @L3_DEB_CHECK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %18 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @l3_debug(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %9
  br label %45

23:                                               ; preds = %3, %3
  br label %24

24:                                               ; preds = %3, %23
  %25 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %26 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @L3_DEB_CHECK, align 4
  %29 = load i32, i32* @L3_DEB_WARN, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %35 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @l3_debug(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %24
  %40 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %41 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 97, i32* %42, align 4
  %43 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %44 = call i32 @l3ni1_status_send(%struct.l3_process* %43, i32 0, i32* null)
  store i32 1, i32* %4, align 4
  br label %46

45:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @l3_debug(i32, i8*, i32) #1

declare dso_local i32 @l3ni1_status_send(%struct.l3_process*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
