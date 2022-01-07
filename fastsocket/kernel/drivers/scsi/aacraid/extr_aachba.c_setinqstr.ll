; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_setinqstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_setinqstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.scsi_inq = type { i8*, i8*, i8* }
%struct.aac_driver_ident = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"SMC\00", align 1
@container_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"V1.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, i8*, i32)* @setinqstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setinqstr(%struct.aac_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_inq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aac_driver_ident*, align 8
  %11 = alloca i8*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.scsi_inq*
  store %struct.scsi_inq* %13, %struct.scsi_inq** %7, align 8
  %14 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %15 = call i32 @memset(%struct.scsi_inq* %14, i8 signext 32, i32 24)
  %16 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %17 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %137

23:                                               ; preds = %3
  %24 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %25 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 65
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 79
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 67
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %47 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @inqstrcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %102

50:                                               ; preds = %39, %33, %23
  store i32 8, i32* %9, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %61, %56, %51
  %66 = phi i1 [ false, %56 ], [ false, %51 ], [ %64, %61 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %51

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %8, align 8
  store i8 0, i8* %74, align 1
  %75 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %76 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %80 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @inqstrcpy(i8* %78, i8* %81)
  %83 = load i32, i32* %9, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %8, align 8
  store i8 %84, i8* %85, align 1
  br label %86

86:                                               ; preds = %98, %70
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 32
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ false, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %8, align 8
  br label %86

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %45
  br label %103

103:                                              ; preds = %108, %102
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  br label %103

111:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 8
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %116, %111
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %126 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @inqstrcpy(i8* %124, i8* %127)
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  store i8 %133, i8* %135, align 1
  br label %136

136:                                              ; preds = %131, %123
  br label %156

137:                                              ; preds = %3
  %138 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %139 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call %struct.aac_driver_ident* @aac_get_driver_ident(i32 %140)
  store %struct.aac_driver_ident* %141, %struct.aac_driver_ident** %10, align 8
  %142 = load %struct.aac_driver_ident*, %struct.aac_driver_ident** %10, align 8
  %143 = getelementptr inbounds %struct.aac_driver_ident, %struct.aac_driver_ident* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %146 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @inqstrcpy(i8* %144, i8* %147)
  %149 = load %struct.aac_driver_ident*, %struct.aac_driver_ident** %10, align 8
  %150 = getelementptr inbounds %struct.aac_driver_ident, %struct.aac_driver_ident* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %153 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @inqstrcpy(i8* %151, i8* %154)
  br label %156

156:                                              ; preds = %137, %136
  %157 = load i32, i32* %6, align 4
  %158 = load i8**, i8*** @container_types, align 8
  %159 = call i32 @ARRAY_SIZE(i8** %158)
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %209

161:                                              ; preds = %156
  %162 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %163 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %11, align 8
  br label %165

165:                                              ; preds = %171, %161
  %166 = load i8*, i8** %11, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 32
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %11, align 8
  br label %165

174:                                              ; preds = %165
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 -4
  %177 = call i64 @memcmp(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 -4
  store i8* %181, i8** %11, align 8
  store i8 32, i8* %181, align 1
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i8*, i8** %11, align 8
  %184 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %185 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %183 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = load i8**, i8*** @container_types, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @strlen(i8* %194)
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %189, %196
  %198 = icmp ult i64 %197, 16
  br i1 %198, label %199, label %208

199:                                              ; preds = %182
  %200 = load i8**, i8*** @container_types, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = call i32 @inqstrcpy(i8* %204, i8* %206)
  br label %208

208:                                              ; preds = %199, %182
  br label %209

209:                                              ; preds = %208, %156
  %210 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %211 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @inqstrcpy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %212)
  ret void
}

declare dso_local i32 @memset(%struct.scsi_inq*, i8 signext, i32) #1

declare dso_local i32 @inqstrcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.aac_driver_ident* @aac_get_driver_ident(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
