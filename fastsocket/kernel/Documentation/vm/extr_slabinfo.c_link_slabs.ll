; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_link_slabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_link_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliasinfo = type { i32, %struct.slabinfo* }
%struct.slabinfo = type { i32, i32 }

@aliasinfo = common dso_local global %struct.aliasinfo* null, align 8
@aliases = common dso_local global i32 0, align 4
@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unresolved alias %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @link_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_slabs() #0 {
  %1 = alloca %struct.aliasinfo*, align 8
  %2 = alloca %struct.slabinfo*, align 8
  %3 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  store %struct.aliasinfo* %3, %struct.aliasinfo** %1, align 8
  br label %4

4:                                                ; preds = %54, %0
  %5 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %6 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  %7 = load i32, i32* @aliases, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %6, i64 %8
  %10 = icmp ult %struct.aliasinfo* %5, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %4
  %12 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %12, %struct.slabinfo** %2, align 8
  br label %13

13:                                               ; preds = %38, %11
  %14 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %15 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %16 = load i32, i32* @slabs, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %15, i64 %17
  %19 = icmp ult %struct.slabinfo* %14, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %13
  %21 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %22 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %25 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %31 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %32 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %31, i32 0, i32 1
  store %struct.slabinfo* %30, %struct.slabinfo** %32, align 8
  %33 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %34 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %40 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %39, i32 1
  store %struct.slabinfo* %40, %struct.slabinfo** %2, align 8
  br label %13

41:                                               ; preds = %29, %13
  %42 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %43 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %44 = load i32, i32* @slabs, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %43, i64 %45
  %47 = icmp eq %struct.slabinfo* %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %50 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %56 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %55, i32 1
  store %struct.aliasinfo* %56, %struct.aliasinfo** %1, align 8
  br label %4

57:                                               ; preds = %4
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
