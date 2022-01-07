; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@R5 = common dso_local global i64 0, align 8
@DTR = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4
@NO_SUCH_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scc_channel*, i32)* @scc_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scc_get_param(%struct.scc_channel* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scc_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.scc_channel* %0, %struct.scc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %117 [
    i32 130, label %7
    i32 136, label %13
    i32 134, label %19
    i32 129, label %25
    i32 142, label %31
    i32 133, label %37
    i32 143, label %43
    i32 135, label %56
    i32 132, label %69
    i32 141, label %75
    i32 140, label %81
    i32 137, label %87
    i32 138, label %93
    i32 128, label %99
    i32 139, label %105
    i32 131, label %111
  ]

7:                                                ; preds = %2
  %8 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @CAST(i32 %11)
  store i64 %12, i64* %3, align 8
  br label %119

13:                                               ; preds = %2
  %14 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %15 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @CAST(i32 %17)
  store i64 %18, i64* %3, align 8
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @CAST(i32 %23)
  store i64 %24, i64* %3, align 8
  br label %119

25:                                               ; preds = %2
  %26 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %27 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @CAST(i32 %29)
  store i64 %30, i64* %3, align 8
  br label %119

31:                                               ; preds = %2
  %32 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @CAST(i32 %35)
  store i64 %36, i64* %3, align 8
  br label %119

37:                                               ; preds = %2
  %38 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %39 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @CAST(i32 %41)
  store i64 %42, i64* %3, align 8
  br label %119

43:                                               ; preds = %2
  %44 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %45 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @R5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DTR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i64 @CAST(i32 %54)
  store i64 %55, i64* %3, align 8
  br label %119

56:                                               ; preds = %2
  %57 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %58 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @R5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RTS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = call i64 @CAST(i32 %67)
  store i64 %68, i64* %3, align 8
  br label %119

69:                                               ; preds = %2
  %70 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %71 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @CAST(i32 %73)
  store i64 %74, i64* %3, align 8
  br label %119

75:                                               ; preds = %2
  %76 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %77 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @CAST(i32 %79)
  store i64 %80, i64* %3, align 8
  br label %119

81:                                               ; preds = %2
  %82 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %83 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @CAST(i32 %85)
  store i64 %86, i64* %3, align 8
  br label %119

87:                                               ; preds = %2
  %88 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %89 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @CAST(i32 %91)
  store i64 %92, i64* %3, align 8
  br label %119

93:                                               ; preds = %2
  %94 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %95 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @CAST(i32 %97)
  store i64 %98, i64* %3, align 8
  br label %119

99:                                               ; preds = %2
  %100 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %101 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @CAST(i32 %103)
  store i64 %104, i64* %3, align 8
  br label %119

105:                                              ; preds = %2
  %106 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %107 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @CAST(i32 %109)
  store i64 %110, i64* %3, align 8
  br label %119

111:                                              ; preds = %2
  %112 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %113 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @CAST(i32 %115)
  store i64 %116, i64* %3, align 8
  br label %119

117:                                              ; preds = %2
  %118 = load i64, i64* @NO_SUCH_PARAM, align 8
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %117, %111, %105, %99, %93, %87, %81, %75, %69, %56, %43, %37, %31, %25, %19, %13, %7
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i64 @CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
