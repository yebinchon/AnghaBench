; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_device = type { i32, i32, i32, i32, %struct.ubi_volume** }

@.str = private unnamed_addr constant [35 x i8] c"open device %d, volume %d, mode %d\00", align 1
@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"volume %d on UBI device %d is corrupted\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot open device %d, volume %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_volume_desc*, align 8
  %10 = alloca %struct.ubi_device*, align 8
  %11 = alloca %struct.ubi_volume*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %24)
  store %struct.ubi_volume_desc* %25, %struct.ubi_volume_desc** %4, align 8
  br label %214

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 129
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 130
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %37)
  store %struct.ubi_volume_desc* %38, %struct.ubi_volume_desc** %4, align 8
  br label %214

39:                                               ; preds = %32, %29, %26
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.ubi_device* @ubi_get_device(i32 %40)
  store %struct.ubi_device* %41, %struct.ubi_device** %10, align 8
  %42 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %43 = icmp ne %struct.ubi_device* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %46)
  store %struct.ubi_volume_desc* %47, %struct.ubi_volume_desc** %4, align 8
  br label %214

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %205

60:                                               ; preds = %51
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.ubi_volume_desc* @kmalloc(i32 16, i32 %61)
  store %struct.ubi_volume_desc* %62, %struct.ubi_volume_desc** %9, align 8
  %63 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %64 = icmp ne %struct.ubi_volume_desc* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %205

68:                                               ; preds = %60
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = call i32 @try_module_get(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %202

75:                                               ; preds = %68
  %76 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 1
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 4
  %81 = load %struct.ubi_volume**, %struct.ubi_volume*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %81, i64 %83
  %85 = load %struct.ubi_volume*, %struct.ubi_volume** %84, align 8
  store %struct.ubi_volume* %85, %struct.ubi_volume** %11, align 8
  %86 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %87 = icmp ne %struct.ubi_volume* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  br label %196

89:                                               ; preds = %75
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  switch i32 %92, label %139 [
    i32 129, label %93
    i32 128, label %104
    i32 130, label %120
  ]

93:                                               ; preds = %89
  %94 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %95 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %196

99:                                               ; preds = %93
  %100 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %101 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %139

104:                                              ; preds = %89
  %105 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %106 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %111 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %104
  br label %196

115:                                              ; preds = %109
  %116 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %117 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %139

120:                                              ; preds = %89
  %121 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %122 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %127 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %132 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125, %120
  br label %196

136:                                              ; preds = %130
  %137 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %138 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %89, %136, %115, %99
  %140 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %141 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %140, i32 0, i32 6
  %142 = call i32 @get_device(i32* %141)
  %143 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %144 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %148 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %151 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %152 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %151, i32 0, i32 1
  store %struct.ubi_volume* %150, %struct.ubi_volume** %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %155 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 2
  %158 = call i32 @mutex_lock(i32* %157)
  %159 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %160 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %191, label %163

163:                                              ; preds = %139
  %164 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @ubi_check_volume(%struct.ubi_device* %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %171 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %170, i32 0, i32 2
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %174 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %173)
  %175 = load i32, i32* %8, align 4
  %176 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %175)
  store %struct.ubi_volume_desc* %176, %struct.ubi_volume_desc** %4, align 8
  br label %214

177:                                              ; preds = %163
  %178 = load i32, i32* %8, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %183 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ubi_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %181, i32 %184)
  %186 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %187 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %186, i32 0, i32 5
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %180, %177
  %189 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %190 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %189, i32 0, i32 4
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %139
  %192 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %193 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %192, i32 0, i32 2
  %194 = call i32 @mutex_unlock(i32* %193)
  %195 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  store %struct.ubi_volume_desc* %195, %struct.ubi_volume_desc** %4, align 8
  br label %214

196:                                              ; preds = %135, %114, %98, %88
  %197 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %198 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %197, i32 0, i32 1
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load i32, i32* @THIS_MODULE, align 4
  %201 = call i32 @module_put(i32 %200)
  br label %202

202:                                              ; preds = %196, %74
  %203 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %204 = call i32 @kfree(%struct.ubi_volume_desc* %203)
  br label %205

205:                                              ; preds = %202, %65, %57
  %206 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %207 = call i32 @ubi_put_device(%struct.ubi_device* %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @dbg_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %212)
  store %struct.ubi_volume_desc* %213, %struct.ubi_volume_desc** %4, align 8
  br label %214

214:                                              ; preds = %205, %191, %169, %44, %35, %22
  %215 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  ret %struct.ubi_volume_desc* %215
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local %struct.ubi_volume_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_check_volume(%struct.ubi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_close_volume(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubi_warn(i8*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubi_put_device(%struct.ubi_device*) #1

declare dso_local i32 @dbg_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
