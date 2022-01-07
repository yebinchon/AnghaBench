; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_11__, i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hdlc %c wr%x ctrl %x\00", align 1
@AVM_FRITZ_PCI = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ctrl(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.BCState*, %struct.BCState** %3, align 8
  %6 = getelementptr inbounds %struct.BCState, %struct.BCState* %5, i32 0, i32 2
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @L1_DEB_HSCX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.BCState*, %struct.BCState** %3, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load %struct.BCState*, %struct.BCState** %3, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 65, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.BCState*, %struct.BCState** %3, align 8
  %23 = getelementptr inbounds %struct.BCState, %struct.BCState* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @debugl1(%struct.TYPE_12__* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.BCState*, %struct.BCState** %3, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVM_FRITZ_PCI, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.BCState*, %struct.BCState** %3, align 8
  %39 = getelementptr inbounds %struct.BCState, %struct.BCState* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load %struct.BCState*, %struct.BCState** %3, align 8
  %42 = getelementptr inbounds %struct.BCState, %struct.BCState* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HDLC_STATUS, align 8
  %45 = load %struct.BCState*, %struct.BCState** %3, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WriteHDLCPCI(%struct.TYPE_12__* %40, i64 %43, i64 %44, i32 %50)
  br label %115

52:                                               ; preds = %29
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.BCState*, %struct.BCState** %3, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load %struct.BCState*, %struct.BCState** %3, align 8
  %61 = getelementptr inbounds %struct.BCState, %struct.BCState* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HDLC_STATUS, align 8
  %64 = add nsw i64 %63, 2
  %65 = load %struct.BCState*, %struct.BCState** %3, align 8
  %66 = getelementptr inbounds %struct.BCState, %struct.BCState* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @WriteHDLCPnP(%struct.TYPE_12__* %59, i64 %62, i64 %64, i32 %71)
  br label %73

73:                                               ; preds = %56, %52
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.BCState*, %struct.BCState** %3, align 8
  %79 = getelementptr inbounds %struct.BCState, %struct.BCState* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.BCState*, %struct.BCState** %3, align 8
  %82 = getelementptr inbounds %struct.BCState, %struct.BCState* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HDLC_STATUS, align 8
  %85 = add nsw i64 %84, 1
  %86 = load %struct.BCState*, %struct.BCState** %3, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WriteHDLCPnP(%struct.TYPE_12__* %80, i64 %83, i64 %85, i32 %92)
  br label %94

94:                                               ; preds = %77, %73
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.BCState*, %struct.BCState** %3, align 8
  %100 = getelementptr inbounds %struct.BCState, %struct.BCState* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load %struct.BCState*, %struct.BCState** %3, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDLC_STATUS, align 8
  %106 = load %struct.BCState*, %struct.BCState** %3, align 8
  %107 = getelementptr inbounds %struct.BCState, %struct.BCState* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @WriteHDLCPnP(%struct.TYPE_12__* %101, i64 %104, i64 %105, i32 %112)
  br label %114

114:                                              ; preds = %98, %94
  br label %115

115:                                              ; preds = %114, %37
  ret void
}

declare dso_local i32 @debugl1(%struct.TYPE_12__*, i8*, i64, i32, i32) #1

declare dso_local i32 @WriteHDLCPCI(%struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @WriteHDLCPnP(%struct.TYPE_12__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
