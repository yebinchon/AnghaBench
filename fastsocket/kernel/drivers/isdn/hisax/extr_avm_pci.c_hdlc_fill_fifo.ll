; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_hdlc_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_hdlc_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i8*, i64, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.IsdnCardState* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.IsdnCardState = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hdlc_fill_fifo\00", align 1
@HDLC_CMD_XME = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"hdlc_fill_fifo %d/%ld\00", align 1
@AVM_FRITZ_PCI = common dso_local global i64 0, align 8
@AVM_FRITZ_PNP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"hdlc_fill_fifo %c cnt %d\00", align 1
@_IO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @hdlc_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 6
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %11, align 8
  store %struct.IsdnCardState* %12, %struct.IsdnCardState** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 32, i32* %6, align 4
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @L1_DEB_HSCX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %28 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %19, %1
  %30 = load %struct.BCState*, %struct.BCState** %2, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %230

35:                                               ; preds = %29
  %36 = load %struct.BCState*, %struct.BCState** %2, align 8
  %37 = getelementptr inbounds %struct.BCState, %struct.BCState* %36, i32 0, i32 5
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %230

43:                                               ; preds = %35
  %44 = load i32, i32* @HDLC_CMD_XME, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.BCState*, %struct.BCState** %2, align 8
  %47 = getelementptr inbounds %struct.BCState, %struct.BCState* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %45
  store i32 %53, i32* %51, align 4
  %54 = load %struct.BCState*, %struct.BCState** %2, align 8
  %55 = getelementptr inbounds %struct.BCState, %struct.BCState* %54, i32 0, i32 5
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %4, align 4
  br label %85

63:                                               ; preds = %43
  %64 = load %struct.BCState*, %struct.BCState** %2, align 8
  %65 = getelementptr inbounds %struct.BCState, %struct.BCState* %64, i32 0, i32 5
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  %69 = load %struct.BCState*, %struct.BCState** %2, align 8
  %70 = getelementptr inbounds %struct.BCState, %struct.BCState* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @L1_MODE_TRANS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %63
  %75 = load i32, i32* @HDLC_CMD_XME, align 4
  %76 = load %struct.BCState*, %struct.BCState** %2, align 8
  %77 = getelementptr inbounds %struct.BCState, %struct.BCState* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %75
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %63
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @L1_DEB_HSCX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.BCState*, %struct.BCState** %2, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 5
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %99, %92, %85
  %109 = load %struct.BCState*, %struct.BCState** %2, align 8
  %110 = getelementptr inbounds %struct.BCState, %struct.BCState* %109, i32 0, i32 5
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %7, align 8
  %114 = load i32*, i32** %7, align 8
  store i32* %114, i32** %8, align 8
  %115 = load %struct.BCState*, %struct.BCState** %2, align 8
  %116 = getelementptr inbounds %struct.BCState, %struct.BCState* %115, i32 0, i32 5
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @skb_pull(%struct.TYPE_14__* %117, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.BCState*, %struct.BCState** %2, align 8
  %122 = getelementptr inbounds %struct.BCState, %struct.BCState* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.BCState*, %struct.BCState** %2, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %125
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %108
  br label %138

136:                                              ; preds = %108
  %137 = load i32, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 0, %135 ], [ %137, %136 ]
  %140 = load %struct.BCState*, %struct.BCState** %2, align 8
  %141 = getelementptr inbounds %struct.BCState, %struct.BCState* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 4
  %146 = load %struct.BCState*, %struct.BCState** %2, align 8
  %147 = call i32 @write_ctrl(%struct.BCState* %146, i32 3)
  %148 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %149 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AVM_FRITZ_PCI, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %158, %153
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %8, align 8
  %161 = load i32, i32* %159, align 4
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %163 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @outl(i32 %161, i64 %166)
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 4
  store i32 %169, i32* %5, align 4
  br label %154

170:                                              ; preds = %154
  br label %189

171:                                              ; preds = %138
  br label %172

172:                                              ; preds = %176, %171
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %7, align 8
  %179 = load i32, i32* %177, align 4
  %180 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %181 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @outb(i32 %179, i64 %184)
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %172

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188, %170
  %190 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %191 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %230

196:                                              ; preds = %189
  %197 = load %struct.BCState*, %struct.BCState** %2, align 8
  %198 = getelementptr inbounds %struct.BCState, %struct.BCState* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %9, align 8
  %200 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %201 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @AVM_FRITZ_PNP, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32*, i32** %8, align 8
  store i32* %206, i32** %7, align 8
  br label %207

207:                                              ; preds = %205, %196
  %208 = load i8*, i8** %9, align 8
  %209 = load %struct.BCState*, %struct.BCState** %2, align 8
  %210 = getelementptr inbounds %struct.BCState, %struct.BCState* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 66, i32 65
  %215 = trunc i32 %214 to i8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @sprintf(i8* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8 signext %215, i32 %216)
  %218 = load i8*, i8** %9, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %9, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @QuickHex(i8* %221, i32* %222, i32 %223)
  %225 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %226 = load %struct.BCState*, %struct.BCState** %2, align 8
  %227 = getelementptr inbounds %struct.BCState, %struct.BCState* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %225, i8* %228)
  br label %230

230:                                              ; preds = %34, %42, %207, %189
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @write_ctrl(%struct.BCState*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
