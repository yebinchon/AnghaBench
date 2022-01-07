; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_biosparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }
%struct.drive_info = type { i16, i8, i8 }
%struct.drive_info.0 = type { i16, i8, i8 }

@SCSI_DISK0_MAJOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"scsi: <fdomain> fdomain_16x0_biosparam: too many disks\00", align 1
@bios_major = common dso_local global i32 0, align 4
@Quantum = common dso_local global i32 0, align 4
@bios_mem = common dso_local global i64 0, align 8
@bios_minor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @fdomain_16x0_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_16x0_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.drive_info, align 2
  %14 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.block_device*, %struct.block_device** %7, align 8
  %17 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @MAJOR(i32 %18)
  %20 = load i64, i64* @SCSI_DISK0_MAJOR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %186

24:                                               ; preds = %4
  %25 = load %struct.block_device*, %struct.block_device** %7, align 8
  %26 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MINOR(i32 %27)
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @bios_major, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %75

32:                                               ; preds = %24
  %33 = load i32, i32* @Quantum, align 4
  switch i32 %33, label %49 [
    i32 2, label %34
    i32 3, label %39
    i32 4, label %44
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 25
  %37 = add nsw i32 7987, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  br label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 15
  %42 = add nsw i32 7990, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %12, align 8
  br label %54

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 15
  %47 = add nsw i32 7988, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %12, align 8
  br label %54

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 25
  %52 = add nsw i32 7985, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %49, %44, %39, %34
  %55 = bitcast %struct.drive_info* %13 to %struct.drive_info.0*
  %56 = load i64, i64* @bios_mem, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @memcpy_fromio(%struct.drive_info.0* %55, i64 %58, i32 4)
  %60 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 1
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 0
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %72, i32* %74, align 4
  br label %185

75:                                               ; preds = %24
  %76 = load i32, i32* @bios_major, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load i32, i32* @bios_minor, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i32, i32* @bios_minor, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = bitcast %struct.drive_info* %13 to %struct.drive_info.0*
  %86 = load i64, i64* @bios_mem, align 8
  %87 = add nsw i64 %86, 8049
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 %88, 10
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @memcpy_fromio(%struct.drive_info.0* %85, i64 %91, i32 4)
  %93 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 1
  %94 = load i8, i8* %93, align 2
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %95, 1
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %13, i32 0, i32 0
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %106, i32* %108, align 4
  br label %184

109:                                              ; preds = %81, %78, %75
  %110 = load %struct.block_device*, %struct.block_device** %7, align 8
  %111 = call i8* @scsi_bios_ptable(%struct.block_device* %110)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %147

114:                                              ; preds = %109
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 65
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 170
  br i1 %119, label %120, label %147

120:                                              ; preds = %114
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 64
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 85
  br i1 %125, label %126, label %147

126:                                              ; preds = %120
  %127 = load i8*, i8** %14, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load i8*, i8** %14, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 5
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %136, 1
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  %140 = load i8*, i8** %14, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 6
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 63
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %144, i32* %146, align 4
  br label %170

147:                                              ; preds = %126, %120, %114, %109
  %148 = load i32, i32* %11, align 4
  %149 = icmp uge i32 %148, 8257536
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 255, i32* %152, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 63, i32* %154, align 4
  br label %169

155:                                              ; preds = %147
  %156 = load i32, i32* %11, align 4
  %157 = icmp uge i32 %156, 2097152
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 128, i32* %160, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 63, i32* %162, align 4
  br label %168

163:                                              ; preds = %155
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 64, i32* %165, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 32, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %132
  %171 = load i32, i32* %11, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %174, %177
  %179 = udiv i32 %171, %178
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %179, i32* %181, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 @kfree(i8* %182)
  br label %184

184:                                              ; preds = %170, %84
  br label %185

185:                                              ; preds = %184, %54
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %185, %22
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @memcpy_fromio(%struct.drive_info.0*, i64, i32) #1

declare dso_local i8* @scsi_bios_ptable(%struct.block_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
