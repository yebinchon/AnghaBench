; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_narrow_write_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_narrow_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, i32, %struct.TYPE_6__*, %struct.bio_vec*, i32, %struct.mddev* }
%struct.TYPE_6__ = type { i32, i32, %struct.bio_vec* }
%struct.bio_vec = type { i32* }
%struct.mddev = type { %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, i32, i32, i32, i32, i32, i32 }

@R1BIO_BehindIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1bio*, i32)* @narrow_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_write_error(%struct.r1bio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.r1conf*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_vec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %19 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %18, i32 0, i32 6
  %20 = load %struct.mddev*, %struct.mddev** %19, align 8
  store %struct.mddev* %20, %struct.mddev** %6, align 8
  %21 = load %struct.mddev*, %struct.mddev** %6, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = load %struct.r1conf*, %struct.r1conf** %22, align 8
  store %struct.r1conf* %23, %struct.r1conf** %7, align 8
  %24 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %25 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.md_rdev*, %struct.md_rdev** %30, align 8
  store %struct.md_rdev* %31, %struct.md_rdev** %8, align 8
  %32 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %33 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %35 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %193

41:                                               ; preds = %2
  %42 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %48 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @R1BIO_BehindIO, align 4
  %60 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %61 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %60, i32 0, i32 5
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %41
  %65 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %66 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  %68 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %69 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %68, i32 0, i32 4
  %70 = load %struct.bio_vec*, %struct.bio_vec** %69, align 8
  store %struct.bio_vec* %70, %struct.bio_vec** %11, align 8
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %79, %64
  %72 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %72, i64 %74
  %76 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %71

82:                                               ; preds = %71
  br label %99

83:                                               ; preds = %41
  %84 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %85 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %9, align 4
  %89 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %90 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.bio_vec*, %struct.bio_vec** %92, align 8
  store %struct.bio_vec* %93, %struct.bio_vec** %11, align 8
  %94 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %95 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %83, %82
  br label %100

100:                                              ; preds = %181, %99
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %191

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* @GFP_NOIO, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.mddev*, %struct.mddev** %6, align 8
  %113 = call %struct.bio* @bio_alloc_mddev(i32 %110, i32 %111, %struct.mddev* %112)
  store %struct.bio* %113, %struct.bio** %17, align 8
  %114 = load %struct.bio*, %struct.bio** %17, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(i32 %116, %struct.bio_vec* %117, i32 %121)
  %123 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %124 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bio*, %struct.bio** %17, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @WRITE, align 4
  %129 = load %struct.bio*, %struct.bio** %17, align 8
  %130 = getelementptr inbounds %struct.bio, %struct.bio* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.bio*, %struct.bio** %17, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %135 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = shl i32 %136, 9
  %138 = load %struct.bio*, %struct.bio** %17, align 8
  %139 = getelementptr inbounds %struct.bio, %struct.bio* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.bio*, %struct.bio** %17, align 8
  %142 = getelementptr inbounds %struct.bio, %struct.bio* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.bio*, %struct.bio** %17, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %146 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %144, %147
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @md_trim_bio(%struct.bio* %143, i32 %148, i32 %149)
  %151 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.bio*, %struct.bio** %17, align 8
  %155 = getelementptr inbounds %struct.bio, %struct.bio* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %153
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %161 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.bio*, %struct.bio** %17, align 8
  %164 = getelementptr inbounds %struct.bio, %struct.bio* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @WRITE, align 4
  %166 = load %struct.bio*, %struct.bio** %17, align 8
  %167 = call i64 @submit_bio_wait(i32 %165, %struct.bio* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %109
  %170 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i64 @rdev_set_badblocks(%struct.md_rdev* %170, i32 %171, i32 %172, i32 0)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %175, %169
  %179 = phi i1 [ false, %169 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %178, %109
  %182 = load %struct.bio*, %struct.bio** %17, align 8
  %183 = call i32 @bio_put(%struct.bio* %182)
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %14, align 4
  br label %100

191:                                              ; preds = %100
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %40
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.bio* @bio_alloc_mddev(i32, i32, %struct.mddev*) #1

declare dso_local i32 @memcpy(i32, %struct.bio_vec*, i32) #1

declare dso_local i32 @md_trim_bio(%struct.bio*, i32, i32) #1

declare dso_local i64 @submit_bio_wait(i32, %struct.bio*) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
