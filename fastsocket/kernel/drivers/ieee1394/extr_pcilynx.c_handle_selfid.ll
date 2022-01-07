; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_handle_selfid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_handle_selfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsb_host = type { i64 }
%struct.selfid = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SelfID process finished (phyid %d, %s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"not root\00", align 1
@LINK_ID = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SelfID packet 0x%x rcvd\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"inconsistent selfid 0x%x/0x%x\00", align 1
@LINK_CONTROL = common dso_local global i32 0, align 4
@LINK_CONTROL_CYCMASTER = common dso_local global i32 0, align 4
@LINK_CONTROL_RCV_CMP_VALID = common dso_local global i32 0, align 4
@LINK_CONTROL_TX_ASYNC_EN = common dso_local global i32 0, align 4
@LINK_CONTROL_RX_ASYNC_EN = common dso_local global i32 0, align 4
@LINK_CONTROL_CYCTIMEREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_lynx*, %struct.hpsb_host*)* @handle_selfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_selfid(%struct.ti_lynx* %0, %struct.hpsb_host* %1) #0 {
  %3 = alloca %struct.ti_lynx*, align 8
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.selfid*, align 8
  store %struct.ti_lynx* %0, %struct.ti_lynx** %3, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %4, align 8
  %12 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %13 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %16 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %21 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  br label %210

25:                                               ; preds = %19
  %26 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %27 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %30 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 16, %34 ], [ %36, %35 ]
  %39 = sdiv i32 %38, 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %44, %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @cpu_to_be32s(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  br label %41

52:                                               ; preds = %41
  %53 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %54 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %60 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %61 = call i32 @generate_own_selfid(%struct.ti_lynx* %59, %struct.hpsb_host* %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 2
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %71 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (i32, i32, i8*, i32, ...) @PRINT(i32 %69, i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %77)
  %79 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %80 = load i32, i32* @LINK_ID, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 65472, %81
  %83 = shl i32 %82, 16
  %84 = call i32 @reg_write(%struct.ti_lynx* %79, i32 %80, i32 %83)
  %85 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %86 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %62
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @hpsb_selfid_received(%struct.hpsb_host* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90, %62
  br label %98

98:                                               ; preds = %160, %97
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %165

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  %103 = bitcast i32* %102 to %struct.selfid*
  store %struct.selfid* %103, %struct.selfid** %11, align 8
  %104 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %105 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %101
  %110 = load %struct.selfid*, %struct.selfid** %11, align 8
  %111 = getelementptr inbounds %struct.selfid, %struct.selfid* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %109
  %115 = load %struct.selfid*, %struct.selfid** %11, align 8
  %116 = getelementptr inbounds %struct.selfid, %struct.selfid* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @hpsb_selfid_received(%struct.hpsb_host* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %114, %109, %101
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, -1
  %133 = icmp eq i32 %128, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %125
  %135 = load i32, i32* @KERN_DEBUG, align 4
  %136 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %137 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i32, i8*, i32, ...) @PRINT(i32 %135, i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @hpsb_selfid_received(%struct.hpsb_host* %143, i32 %146)
  br label %160

148:                                              ; preds = %125
  %149 = load i32, i32* @KERN_INFO, align 4
  %150 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %151 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i32, i8*, i32, ...) @PRINT(i32 %149, i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %148, %134
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32* %162, i32** %5, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %163, 8
  store i32 %164, i32* %8, align 4
  br label %98

165:                                              ; preds = %98
  %166 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %167 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @hpsb_selfid_received(%struct.hpsb_host* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %174, %171, %165
  %182 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @hpsb_selfid_complete(%struct.hpsb_host* %182, i32 %183, i32 %184)
  %186 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %187 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %210

191:                                              ; preds = %181
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %196 = load i32, i32* @LINK_CONTROL, align 4
  %197 = load i32, i32* @LINK_CONTROL_CYCMASTER, align 4
  %198 = call i32 @reg_set_bits(%struct.ti_lynx* %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %191
  %200 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %201 = load i32, i32* @LINK_CONTROL, align 4
  %202 = load i32, i32* @LINK_CONTROL_RCV_CMP_VALID, align 4
  %203 = load i32, i32* @LINK_CONTROL_TX_ASYNC_EN, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @LINK_CONTROL_RX_ASYNC_EN, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @LINK_CONTROL_CYCTIMEREN, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @reg_set_bits(%struct.ti_lynx* %200, i32 %201, i32 %208)
  br label %210

210:                                              ; preds = %199, %190, %24
  ret void
}

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @generate_own_selfid(%struct.ti_lynx*, %struct.hpsb_host*) #1

declare dso_local i32 @PRINT(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @reg_write(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @hpsb_selfid_received(%struct.hpsb_host*, i32) #1

declare dso_local i32 @hpsb_selfid_complete(%struct.hpsb_host*, i32, i32) #1

declare dso_local i32 @reg_set_bits(%struct.ti_lynx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
