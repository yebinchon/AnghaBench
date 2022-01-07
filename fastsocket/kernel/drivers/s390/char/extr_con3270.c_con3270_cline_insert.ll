; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_cline_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_cline_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32* }

@CON_UPDATE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*, i8)* @con3270_cline_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_cline_insert(%struct.con3270* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.con3270*, align 8
  %4 = alloca i8, align 1
  store %struct.con3270* %0, %struct.con3270** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.con3270*, %struct.con3270** %3, align 8
  %6 = getelementptr inbounds %struct.con3270, %struct.con3270* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32 [ 32, %12 ], [ %15, %13 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %8, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.con3270*, %struct.con3270** %3, align 8
  %22 = getelementptr inbounds %struct.con3270, %struct.con3270* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.con3270*, %struct.con3270** %3, align 8
  %27 = getelementptr inbounds %struct.con3270, %struct.con3270* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  store i32 %20, i32* %33, align 4
  %34 = load %struct.con3270*, %struct.con3270** %3, align 8
  %35 = getelementptr inbounds %struct.con3270, %struct.con3270* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i64 @list_empty(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %16
  %41 = load %struct.con3270*, %struct.con3270** %3, align 8
  %42 = getelementptr inbounds %struct.con3270, %struct.con3270* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.con3270*, %struct.con3270** %3, align 8
  %46 = getelementptr inbounds %struct.con3270, %struct.con3270* %45, i32 0, i32 1
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load i32, i32* @CON_UPDATE_LIST, align 4
  %49 = load %struct.con3270*, %struct.con3270** %3, align 8
  %50 = getelementptr inbounds %struct.con3270, %struct.con3270* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %40, %16
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
