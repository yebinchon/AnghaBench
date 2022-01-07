; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i16, i64 }

@jiffies = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i8 0, align 1
@READ_10 = common dso_local global i8 0, align 1
@WRITE_6 = common dso_local global i8 0, align 1
@WRITE_10 = common dso_local global i8 0, align 1
@DID_ERROR = common dso_local global i32 0, align 4
@PPA_BURST_SIZE = common dso_local global i64 0, align 8
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ppa_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppa_completion(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_11__* @ppa_dev(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %5, align 2
  %22 = load i64, i64* @jiffies, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @READ_6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %1
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @READ_10, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @WRITE_6, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @WRITE_10, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br label %51

51:                                               ; preds = %45, %39, %33, %1
  %52 = phi i1 [ true, %39 ], [ true, %33 ], [ true, %1 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i16, i16* %5, align 2
  %55 = call i32 @r_str(i16 zeroext %54)
  %56 = and i32 %55, 240
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %7, align 1
  br label %58

58:                                               ; preds = %219, %51
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 240
  br i1 %61, label %62, label %220

62:                                               ; preds = %58
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  %66 = call i64 @time_after(i64 %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %221

69:                                               ; preds = %62
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = load i32, i32* @DID_ERROR, align 4
  %78 = call i32 @ppa_fail(%struct.TYPE_11__* %76, i32 %77)
  store i32 -1, i32* %2, align 4
  br label %221

79:                                               ; preds = %69
  %80 = load i8, i8* %7, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 192
  %83 = icmp ne i32 %82, 192
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %103, %84
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i16, i16* %5, align 2
  %93 = call i32 @r_str(i16 zeroext %92)
  %94 = and i32 %93, 240
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %7, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 192
  %98 = icmp ne i32 %97, 192
  br label %99

99:                                               ; preds = %91, %88
  %100 = phi i1 [ false, %88 ], [ %98, %91 ]
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = call i32 @udelay(i32 1)
  br label %103

103:                                              ; preds = %101
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %12, align 8
  br label %88

106:                                              ; preds = %99
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %221

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PPA_BURST_SIZE, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i64, i64* @PPA_BURST_SIZE, align 8
  br label %124

123:                                              ; preds = %114, %111
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i64 [ %122, %121 ], [ 1, %123 ]
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load i8, i8* %7, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 192
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @ppa_out(%struct.TYPE_11__* %131, i32 %135, i32 %136)
  store i32 %137, i32* %11, align 4
  br label %146

138:                                              ; preds = %124
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @ppa_in(%struct.TYPE_11__* %139, i32 %143, i32 %144)
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %138, %130
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %149 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %147
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %158, %154
  store i64 %159, i64* %157, align 8
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %146
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = load i32, i32* @DID_BUS_BUSY, align 4
  %165 = call i32 @ppa_fail(%struct.TYPE_11__* %163, i32 %164)
  store i32 -1, i32* %2, align 4
  br label %221

166:                                              ; preds = %146
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = icmp ne %struct.TYPE_12__* %170, null
  br i1 %171, label %172, label %209

172:                                              ; preds = %166
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %174 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %209, label %178

178:                                              ; preds = %172
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %180 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %181, align 8
  %184 = icmp ne i32 %182, 0
  br i1 %184, label %185, label %208

185:                                              ; preds = %178
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 1
  store %struct.TYPE_12__* %190, %struct.TYPE_12__** %188, align 8
  %191 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %192 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %198 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i64 %196, i64* %199, align 8
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = call i32 @sg_virt(%struct.TYPE_12__* %203)
  %205 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %206 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 8
  br label %208

208:                                              ; preds = %185, %178
  br label %209

209:                                              ; preds = %208, %172, %166
  %210 = load i16, i16* %5, align 2
  %211 = call i32 @r_str(i16 zeroext %210)
  %212 = and i32 %211, 240
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %7, align 1
  %214 = load i8, i8* %7, align 1
  %215 = zext i8 %214 to i32
  %216 = and i32 %215, 128
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %221

219:                                              ; preds = %209
  br label %58

220:                                              ; preds = %58
  store i32 1, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %218, %162, %109, %75, %68
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_11__* @ppa_dev(i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ppa_fail(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ppa_out(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ppa_in(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
