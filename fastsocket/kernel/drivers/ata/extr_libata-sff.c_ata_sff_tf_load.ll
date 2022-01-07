; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_tf_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.ata_ioports }
%struct.ata_ioports = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hob: feat 0x%X nsect 0x%X, lba 0x%X 0x%X 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"feat 0x%X nsect 0x%X lba 0x%X 0x%X 0x%X\0A\00", align 1
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"device 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  store %struct.ata_ioports* %8, %struct.ata_ioports** %5, align 8
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %23 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %31 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @iowrite8(i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %36 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %41 = call i32 @ata_wait_idle(%struct.ata_port* %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %111

45:                                               ; preds = %42
  %46 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %45
  %53 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %54 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON_ONCE(i32 %58)
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %64 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @iowrite8(i64 %62, i64 %65)
  %67 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %68 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %71 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @iowrite8(i64 %69, i64 %72)
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %78 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @iowrite8(i64 %76, i64 %79)
  %81 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %82 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %85 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @iowrite8(i64 %83, i64 %86)
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %92 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @iowrite8(i64 %90, i64 %93)
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %102 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %108 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %97, i64 %100, i64 %103, i64 %106, i64 %109)
  br label %111

111:                                              ; preds = %52, %45, %42
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %166

114:                                              ; preds = %111
  %115 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %116 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %119 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @iowrite8(i64 %117, i64 %120)
  %122 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %123 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %126 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @iowrite8(i64 %124, i64 %127)
  %129 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %130 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %133 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @iowrite8(i64 %131, i64 %134)
  %136 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %137 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %136, i32 0, i32 10
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %140 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @iowrite8(i64 %138, i64 %141)
  %143 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %144 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %147 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @iowrite8(i64 %145, i64 %148)
  %150 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %151 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %154 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %157 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %160 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %159, i32 0, i32 10
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %163 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %162, i32 0, i32 11
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %152, i64 %155, i64 %158, i64 %161, i64 %164)
  br label %166

166:                                              ; preds = %114, %111
  %167 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %168 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %166
  %174 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %175 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %174, i32 0, i32 12
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %178 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @iowrite8(i64 %176, i64 %179)
  %181 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %182 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %181, i32 0, i32 12
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i8*, i64, ...) @VPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %183)
  br label %185

185:                                              ; preds = %173, %166
  %186 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %187 = call i32 @ata_wait_idle(%struct.ata_port* %186)
  ret void
}

declare dso_local i32 @iowrite8(i64, i64) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @VPRINTK(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
