; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_location_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_location_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.mddev*, i32)* }
%struct.TYPE_3__ = type { i64, i64, i64, %struct.file* }
%struct.file = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MD_CHANGE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @location_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @location_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mddev*, %struct.mddev** %5, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.mddev*, %struct.mddev** %5, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.mddev*, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %230

25:                                               ; preds = %15
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.mddev*, %struct.mddev** %5, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %230

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load %struct.mddev*, %struct.mddev** %5, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = icmp ne %struct.file* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.mddev*, %struct.mddev** %5, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %50, %44, %39
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %230

63:                                               ; preds = %56
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.mddev*, %struct.mddev** %5, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %72, align 8
  %74 = load %struct.mddev*, %struct.mddev** %5, align 8
  %75 = call i32 %73(%struct.mddev* %74, i32 1)
  %76 = load %struct.mddev*, %struct.mddev** %5, align 8
  %77 = call i32 @bitmap_destroy(%struct.mddev* %76)
  %78 = load %struct.mddev*, %struct.mddev** %5, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %81, align 8
  %83 = load %struct.mddev*, %struct.mddev** %5, align 8
  %84 = call i32 %82(%struct.mddev* %83, i32 0)
  br label %85

85:                                               ; preds = %68, %63
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.mddev*, %struct.mddev** %5, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load %struct.file*, %struct.file** %91, align 8
  %93 = icmp ne %struct.file* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.mddev*, %struct.mddev** %5, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load %struct.file*, %struct.file** %97, align 8
  store %struct.file* %98, %struct.file** %8, align 8
  %99 = load %struct.mddev*, %struct.mddev** %5, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store %struct.file* null, %struct.file** %101, align 8
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = call i32 @restore_bitmap_write_access(%struct.file* %102)
  %104 = load %struct.file*, %struct.file** %8, align 8
  %105 = call i32 @fput(%struct.file* %104)
  br label %106

106:                                              ; preds = %94, %85
  br label %213

107:                                              ; preds = %50
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %212

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %230

119:                                              ; preds = %112
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = call i32 @kstrtoll(i8* %127, i32 10, i64* %9)
  store i32 %128, i32* %10, align 4
  br label %132

129:                                              ; preds = %119
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @kstrtoll(i8* %130, i32 10, i64* %9)
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %230

137:                                              ; preds = %132
  %138 = load i64, i64* %9, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %230

143:                                              ; preds = %137
  %144 = load %struct.mddev*, %struct.mddev** %5, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = load %struct.mddev*, %struct.mddev** %5, align 8
  %151 = getelementptr inbounds %struct.mddev, %struct.mddev* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.mddev*, %struct.mddev** %5, align 8
  %157 = getelementptr inbounds %struct.mddev, %struct.mddev* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %155, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %230

164:                                              ; preds = %154, %149, %143
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.mddev*, %struct.mddev** %5, align 8
  %167 = getelementptr inbounds %struct.mddev, %struct.mddev* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i64 %165, i64* %168, align 8
  %169 = load %struct.mddev*, %struct.mddev** %5, align 8
  %170 = getelementptr inbounds %struct.mddev, %struct.mddev* %169, i32 0, i32 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = icmp ne %struct.TYPE_4__* %171, null
  br i1 %172, label %173, label %210

173:                                              ; preds = %164
  %174 = load %struct.mddev*, %struct.mddev** %5, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %177, align 8
  %179 = load %struct.mddev*, %struct.mddev** %5, align 8
  %180 = call i32 %178(%struct.mddev* %179, i32 1)
  %181 = load %struct.mddev*, %struct.mddev** %5, align 8
  %182 = call i32 @bitmap_create(%struct.mddev* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %173
  %186 = load %struct.mddev*, %struct.mddev** %5, align 8
  %187 = call i32 @bitmap_load(%struct.mddev* %186)
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %185, %173
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.mddev*, %struct.mddev** %5, align 8
  %193 = call i32 @bitmap_destroy(%struct.mddev* %192)
  %194 = load %struct.mddev*, %struct.mddev** %5, align 8
  %195 = getelementptr inbounds %struct.mddev, %struct.mddev* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %188
  %198 = load %struct.mddev*, %struct.mddev** %5, align 8
  %199 = getelementptr inbounds %struct.mddev, %struct.mddev* %198, i32 0, i32 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %201, align 8
  %203 = load %struct.mddev*, %struct.mddev** %5, align 8
  %204 = call i32 %202(%struct.mddev* %203, i32 0)
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %197
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %230

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %164
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %111
  br label %213

213:                                              ; preds = %212, %106
  %214 = load %struct.mddev*, %struct.mddev** %5, align 8
  %215 = getelementptr inbounds %struct.mddev, %struct.mddev* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* @MD_CHANGE_DEVS, align 4
  %220 = load %struct.mddev*, %struct.mddev** %5, align 8
  %221 = getelementptr inbounds %struct.mddev, %struct.mddev* %220, i32 0, i32 2
  %222 = call i32 @set_bit(i32 %219, i32* %221)
  %223 = load %struct.mddev*, %struct.mddev** %5, align 8
  %224 = getelementptr inbounds %struct.mddev, %struct.mddev* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @md_wakeup_thread(i32 %225)
  br label %227

227:                                              ; preds = %218, %213
  %228 = load i64, i64* %7, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %227, %207, %161, %140, %135, %116, %60, %35, %22
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @restore_bitmap_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

declare dso_local i32 @bitmap_create(%struct.mddev*) #1

declare dso_local i32 @bitmap_load(%struct.mddev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
