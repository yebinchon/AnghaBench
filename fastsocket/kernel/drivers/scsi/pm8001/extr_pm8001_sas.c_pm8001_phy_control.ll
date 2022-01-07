; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_phy_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.asd_sas_phy = type { i32, %struct.sas_phy*, %struct.TYPE_5__* }
%struct.sas_phy = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.pm8001_hba_info* }
%struct.sas_phy_linkrates = type { i32, i32 }

@completion = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_8__* null, align 8
@PHY_LINK_RESET = common dso_local global i32 0, align 4
@PHY_HARD_RESET = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_phy_control(%struct.asd_sas_phy* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm8001_hba_info*, align 8
  %11 = alloca %struct.sas_phy_linkrates*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sas_phy*, align 8
  %14 = alloca i8**, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %16 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %10, align 8
  %18 = load i32, i32* @completion, align 4
  %19 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %18)
  %20 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %21 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %23, align 8
  store %struct.pm8001_hba_info* %24, %struct.pm8001_hba_info** %10, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i32* @completion, i32** %31, align 8
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %237 [
    i32 128, label %33
    i32 131, label %93
    i32 130, label %119
    i32 129, label %145
    i32 133, label %153
    i32 132, label %160
  ]

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.sas_phy_linkrates*
  store %struct.sas_phy_linkrates* %35, %struct.sas_phy_linkrates** %11, align 8
  %36 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %37 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %42 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %43, i32* %50, align 8
  br label %51

51:                                               ; preds = %40, %33
  %52 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %53 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %58 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %61 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %51
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %69 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %79, align 8
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 %80(%struct.pm8001_hba_info* %81, i32 %82)
  %84 = call i32 @wait_for_completion(i32* @completion)
  br label %85

85:                                               ; preds = %77, %67
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %87, align 8
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PHY_LINK_RESET, align 4
  %92 = call i32 %88(%struct.pm8001_hba_info* %89, i32 %90, i32 %91)
  br label %240

93:                                               ; preds = %3
  %94 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %95 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %93
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %105, align 8
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 %106(%struct.pm8001_hba_info* %107, i32 %108)
  %110 = call i32 @wait_for_completion(i32* @completion)
  br label %111

111:                                              ; preds = %103, %93
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %113, align 8
  %115 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @PHY_HARD_RESET, align 4
  %118 = call i32 %114(%struct.pm8001_hba_info* %115, i32 %116, i32 %117)
  br label %240

119:                                              ; preds = %3
  %120 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %121 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %119
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %131, align 8
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 %132(%struct.pm8001_hba_info* %133, i32 %134)
  %136 = call i32 @wait_for_completion(i32* @completion)
  br label %137

137:                                              ; preds = %129, %119
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %139, align 8
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @PHY_LINK_RESET, align 4
  %144 = call i32 %140(%struct.pm8001_hba_info* %141, i32 %142, i32 %143)
  br label %240

145:                                              ; preds = %3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %147, align 8
  %149 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @PHY_LINK_RESET, align 4
  %152 = call i32 %148(%struct.pm8001_hba_info* %149, i32 %150, i32 %151)
  br label %240

153:                                              ; preds = %3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %155, align 8
  %157 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 %156(%struct.pm8001_hba_info* %157, i32 %158)
  br label %240

160:                                              ; preds = %3
  %161 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %162 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %161, i32 0, i32 0
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @spin_lock_irqsave(i32* %162, i64 %163)
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %166 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @chip_8001, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %160
  %171 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 4
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 196608, i32 262144
  %176 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %171, i32 %175)
  %177 = icmp eq i32 -1, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %180 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %179, i32 0, i32 0
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %243

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %160
  %187 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %188 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %187, i32 0, i32 1
  %189 = load %struct.sas_phy*, %struct.sas_phy** %188, align 8
  store %struct.sas_phy* %189, %struct.sas_phy** %13, align 8
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %191 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %190, i32 0, i32 2
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 2
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = getelementptr inbounds i8, i8* %196, i64 4148
  %198 = load i32, i32* %9, align 4
  %199 = and i32 %198, 3
  %200 = mul nsw i32 16384, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = bitcast i8* %202 to i8**
  store i8** %203, i8*** %14, align 8
  %204 = load i8**, i8*** %14, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.sas_phy*, %struct.sas_phy** %13, align 8
  %208 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load i8**, i8*** %14, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.sas_phy*, %struct.sas_phy** %13, align 8
  %213 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load i8**, i8*** %14, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 3
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.sas_phy*, %struct.sas_phy** %13, align 8
  %218 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = load i8**, i8*** %14, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 4
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.sas_phy*, %struct.sas_phy** %13, align 8
  %223 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  %224 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %225 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @chip_8001, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %186
  %230 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %231 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %230, i32 0)
  br label %232

232:                                              ; preds = %229, %186
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %234 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %233, i32 0, i32 0
  %235 = load i64, i64* %12, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  store i32 0, i32* %4, align 4
  br label %243

237:                                              ; preds = %3
  %238 = load i32, i32* @EOPNOTSUPP, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %237, %153, %145, %137, %111, %85
  %241 = call i32 @msleep(i32 300)
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %240, %232, %178
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
