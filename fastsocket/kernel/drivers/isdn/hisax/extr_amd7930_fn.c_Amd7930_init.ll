; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Amd7930: initamd called\00", align 1
@Amd7930_ph_command = common dso_local global i32 0, align 4
@setstack_Amd7930 = common dso_local global i32 0, align 4
@DC_Close_Amd7930 = common dso_local global i32 0, align 4
@initAMD = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Amd7930_init(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %7 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @L1_DEB_ISAC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %14 = call i32 @debugl1(%struct.IsdnCardState* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 64, i32* %27, align 8
  %28 = load i32, i32* @Amd7930_ph_command, align 4
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @setstack_Amd7930, align 4
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @DC_Close_Amd7930, align 4
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** @initAMD, align 8
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %110, %15
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 65535
  br i1 %43, label %44, label %111

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LOBYTE(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %3, align 8
  %50 = load i32, i32* %48, align 4
  %51 = icmp sge i32 %50, 256
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rByteAMD(%struct.IsdnCardState* %56, i32 %57)
  br label %76

59:                                               ; preds = %52
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wByteAMD(%struct.IsdnCardState* %60, i32 0, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %3, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %72, %59
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %71 = call i32 @rByteAMD(%struct.IsdnCardState* %70, i32 1)
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  br label %66

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %55
  br label %110

77:                                               ; preds = %44
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %3, align 8
  %85 = load i32, i32* %83, align 4
  %86 = call i32 @LOBYTE(i32 %85)
  %87 = call i32 @wByteAMD(%struct.IsdnCardState* %81, i32 %82, i32 %86)
  br label %109

88:                                               ; preds = %77
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @wByteAMD(%struct.IsdnCardState* %89, i32 0, i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %3, align 8
  %94 = load i32, i32* %92, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %105, %88
  %96 = load i32, i32* %5, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %3, align 8
  %102 = load i32, i32* %100, align 4
  %103 = call i32 @LOBYTE(i32 %102)
  %104 = call i32 @wByteAMD(%struct.IsdnCardState* %99, i32 1, i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %5, align 4
  br label %95

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %76
  br label %40

111:                                              ; preds = %40
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @rByteAMD(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @wByteAMD(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
