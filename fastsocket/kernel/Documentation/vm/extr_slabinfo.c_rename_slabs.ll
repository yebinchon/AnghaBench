; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_rename_slabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_rename_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i32 }
%struct.aliasinfo = type { i8* }

@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@show_first_alias = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@actual_slabs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rename_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_slabs() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = alloca %struct.aliasinfo*, align 8
  %3 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %3, %struct.slabinfo** %1, align 8
  br label %4

4:                                                ; preds = %45, %0
  %5 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %6 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %7 = load i32, i32* @slabs, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %6, i64 %8
  %10 = icmp ult %struct.slabinfo* %5, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %4
  %12 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %13 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 58
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %45

19:                                               ; preds = %11
  %20 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %21 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @show_first_alias, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %45

28:                                               ; preds = %24, %19
  %29 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %30 = call %struct.aliasinfo* @find_one_alias(%struct.slabinfo* %29)
  store %struct.aliasinfo* %30, %struct.aliasinfo** %2, align 8
  %31 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %32 = icmp ne %struct.aliasinfo* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %35 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %38 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %41 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* @actual_slabs, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @actual_slabs, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %27, %18
  %46 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %47 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %46, i32 1
  store %struct.slabinfo* %47, %struct.slabinfo** %1, align 8
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local %struct.aliasinfo* @find_one_alias(%struct.slabinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
