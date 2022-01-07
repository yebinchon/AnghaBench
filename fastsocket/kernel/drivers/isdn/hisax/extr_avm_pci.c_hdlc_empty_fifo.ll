; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_hdlc_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_hdlc_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i8*, i64, %struct.TYPE_6__, %struct.IsdnCardState* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.IsdnCardState = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@AVM_HDLC_2 = common dso_local global i32 0, align 4
@AVM_HDLC_1 = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hdlc_empty_fifo %d\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"hdlc_empty_fifo: incoming packet too large\00", align 1
@AVM_FRITZ_PCI = common dso_local global i64 0, align 8
@AVM_FRITZ_PNP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"hdlc_empty_fifo %c cnt %d\00", align 1
@_IO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @hdlc_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.IsdnCardState*, align 8
  %10 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.BCState*, %struct.BCState** %3, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AVM_HDLC_2, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AVM_HDLC_1, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.BCState*, %struct.BCState** %3, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 3
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %22, align 8
  store %struct.IsdnCardState* %23, %struct.IsdnCardState** %9, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @L1_DEB_HSCX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %30, %19
  %42 = load %struct.BCState*, %struct.BCState** %3, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i64, i64* @HSCX_BUFMAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @L1_DEB_WARN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %61 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  br label %180

63:                                               ; preds = %41
  %64 = load %struct.BCState*, %struct.BCState** %3, align 8
  %65 = getelementptr inbounds %struct.BCState, %struct.BCState* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.BCState*, %struct.BCState** %3, align 8
  %70 = getelementptr inbounds %struct.BCState, %struct.BCState* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  store i32* %75, i32** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.BCState*, %struct.BCState** %3, align 8
  %79 = getelementptr inbounds %struct.BCState, %struct.BCState* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %77
  store i64 %83, i64* %81, align 8
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AVM_FRITZ_PCI, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %63
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %92 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 4
  %97 = call i32 @outl(i32 %90, i64 %96)
  br label %98

98:                                               ; preds = %102, %89
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %104 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @inl(i64 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %8, align 4
  br label %98

113:                                              ; preds = %98
  br label %139

114:                                              ; preds = %63
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %117 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 4
  %122 = call i32 @outb(i32 %115, i64 %121)
  br label %123

123:                                              ; preds = %127, %114
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %129 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @inb(i64 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %6, align 8
  store i32 %133, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %123

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %141 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %180

146:                                              ; preds = %139
  %147 = load %struct.BCState*, %struct.BCState** %3, align 8
  %148 = getelementptr inbounds %struct.BCState, %struct.BCState* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %10, align 8
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %151 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AVM_FRITZ_PNP, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32*, i32** %5, align 8
  store i32* %156, i32** %6, align 8
  br label %157

157:                                              ; preds = %155, %146
  %158 = load i8*, i8** %10, align 8
  %159 = load %struct.BCState*, %struct.BCState** %3, align 8
  %160 = getelementptr inbounds %struct.BCState, %struct.BCState* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 66, i32 65
  %165 = trunc i32 %164 to i8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @sprintf(i8* %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %165, i32 %166)
  %168 = load i8*, i8** %10, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %10, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @QuickHex(i8* %171, i32* %172, i32 %173)
  %175 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %176 = load %struct.BCState*, %struct.BCState** %3, align 8
  %177 = getelementptr inbounds %struct.BCState, %struct.BCState* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %175, i8* %178)
  br label %180

180:                                              ; preds = %62, %157, %139
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
