; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ucode_loader.c_brcms_ucode_data_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ucode_loader.c_brcms_ucode_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32 }
%struct.brcms_ucode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@D11LCN0BSINITVALS24 = common dso_local global i32 0, align 4
@D11LCN0INITVALS24 = common dso_local global i32 0, align 4
@D11LCN1BSINITVALS24 = common dso_local global i32 0, align 4
@D11LCN1INITVALS24 = common dso_local global i32 0, align 4
@D11LCN2BSINITVALS24 = common dso_local global i32 0, align 4
@D11LCN2INITVALS24 = common dso_local global i32 0, align 4
@D11N0ABSINITVALS16 = common dso_local global i32 0, align 4
@D11N0BSINITVALS16 = common dso_local global i32 0, align 4
@D11N0INITVALS16 = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT16_MIMO = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT16_MIMOSZ = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT24_LCN = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT24_LCNSZ = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT_BOMMAJOR = common dso_local global i32 0, align 4
@D11UCODE_OVERSIGHT_BOMMINOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_ucode_data_init(%struct.brcms_info* %0, %struct.brcms_ucode* %1) #0 {
  %3 = alloca %struct.brcms_info*, align 8
  %4 = alloca %struct.brcms_ucode*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_info* %0, %struct.brcms_info** %3, align 8
  store %struct.brcms_ucode* %1, %struct.brcms_ucode** %4, align 8
  %6 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %7 = call i32 @brcms_check_firmwares(%struct.brcms_info* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %14 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %14, i32 0, i32 14
  %16 = bitcast i32* %15 to i8**
  %17 = load i32, i32* @D11LCN0BSINITVALS24, align 4
  %18 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %13, i8** %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi i32 [ %11, %10 ], [ %18, %12 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %27 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %28 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %27, i32 0, i32 13
  %29 = bitcast i32* %28 to i8**
  %30 = load i32, i32* @D11LCN0INITVALS24, align 4
  %31 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %26, i8** %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %25 ]
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %40 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %41 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %40, i32 0, i32 12
  %42 = bitcast i32* %41 to i8**
  %43 = load i32, i32* @D11LCN1BSINITVALS24, align 4
  %44 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %39, i8** %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %36
  %46 = phi i32 [ %37, %36 ], [ %44, %38 ]
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %53 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %54 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %53, i32 0, i32 11
  %55 = bitcast i32* %54 to i8**
  %56 = load i32, i32* @D11LCN1INITVALS24, align 4
  %57 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %52, i8** %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %49
  %59 = phi i32 [ %50, %49 ], [ %57, %51 ]
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %66 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %67 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %66, i32 0, i32 10
  %68 = bitcast i32* %67 to i8**
  %69 = load i32, i32* @D11LCN2BSINITVALS24, align 4
  %70 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %65, i8** %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %62
  %72 = phi i32 [ %63, %62 ], [ %70, %64 ]
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %79 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %80 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %79, i32 0, i32 9
  %81 = bitcast i32* %80 to i8**
  %82 = load i32, i32* @D11LCN2INITVALS24, align 4
  %83 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %78, i8** %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %75
  %85 = phi i32 [ %76, %75 ], [ %83, %77 ]
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  br label %97

90:                                               ; preds = %84
  %91 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %92 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %93 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %92, i32 0, i32 8
  %94 = bitcast i32* %93 to i8**
  %95 = load i32, i32* @D11N0ABSINITVALS16, align 4
  %96 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %91, i8** %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %88
  %98 = phi i32 [ %89, %88 ], [ %96, %90 ]
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  br label %110

103:                                              ; preds = %97
  %104 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %105 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %106 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %105, i32 0, i32 7
  %107 = bitcast i32* %106 to i8**
  %108 = load i32, i32* @D11N0BSINITVALS16, align 4
  %109 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %104, i8** %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %101
  %111 = phi i32 [ %102, %101 ], [ %109, %103 ]
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  br label %123

116:                                              ; preds = %110
  %117 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %118 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %119 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %118, i32 0, i32 6
  %120 = bitcast i32* %119 to i8**
  %121 = load i32, i32* @D11N0INITVALS16, align 4
  %122 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %117, i8** %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %114
  %124 = phi i32 [ %115, %114 ], [ %122, %116 ]
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  br label %136

129:                                              ; preds = %123
  %130 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %131 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %132 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %131, i32 0, i32 5
  %133 = bitcast i32* %132 to i8**
  %134 = load i32, i32* @D11UCODE_OVERSIGHT16_MIMO, align 4
  %135 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %130, i8** %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %127
  %137 = phi i32 [ %128, %127 ], [ %135, %129 ]
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  br label %148

142:                                              ; preds = %136
  %143 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %144 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %145 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %144, i32 0, i32 4
  %146 = load i32, i32* @D11UCODE_OVERSIGHT16_MIMOSZ, align 4
  %147 = call i32 @brcms_ucode_init_uint(%struct.brcms_info* %143, i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %140
  %149 = phi i32 [ %141, %140 ], [ %147, %142 ]
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  br label %161

154:                                              ; preds = %148
  %155 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %156 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %157 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %156, i32 0, i32 3
  %158 = bitcast i32* %157 to i8**
  %159 = load i32, i32* @D11UCODE_OVERSIGHT24_LCN, align 4
  %160 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %155, i8** %158, i32 %159)
  br label %161

161:                                              ; preds = %154, %152
  %162 = phi i32 [ %153, %152 ], [ %160, %154 ]
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %5, align 4
  br label %173

167:                                              ; preds = %161
  %168 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %169 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %170 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %169, i32 0, i32 2
  %171 = load i32, i32* @D11UCODE_OVERSIGHT24_LCNSZ, align 4
  %172 = call i32 @brcms_ucode_init_uint(%struct.brcms_info* %168, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %165
  %174 = phi i32 [ %166, %165 ], [ %172, %167 ]
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* %5, align 4
  br label %186

179:                                              ; preds = %173
  %180 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %181 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %182 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %181, i32 0, i32 1
  %183 = bitcast i32* %182 to i8**
  %184 = load i32, i32* @D11UCODE_OVERSIGHT_BOMMAJOR, align 4
  %185 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %180, i8** %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %177
  %187 = phi i32 [ %178, %177 ], [ %185, %179 ]
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* %5, align 4
  br label %199

192:                                              ; preds = %186
  %193 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %194 = load %struct.brcms_ucode*, %struct.brcms_ucode** %4, align 8
  %195 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %194, i32 0, i32 0
  %196 = bitcast i32* %195 to i8**
  %197 = load i32, i32* @D11UCODE_OVERSIGHT_BOMMINOR, align 4
  %198 = call i32 @brcms_ucode_init_buf(%struct.brcms_info* %193, i8** %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %190
  %200 = phi i32 [ %191, %190 ], [ %198, %192 ]
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @brcms_check_firmwares(%struct.brcms_info*) #1

declare dso_local i32 @brcms_ucode_init_buf(%struct.brcms_info*, i8**, i32) #1

declare dso_local i32 @brcms_ucode_init_uint(%struct.brcms_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
