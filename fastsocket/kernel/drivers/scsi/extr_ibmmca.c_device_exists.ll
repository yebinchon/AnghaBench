; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_device_exists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_device_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TYPE_ROM = common dso_local global i8 0, align 1
@TYPE_WORM = common dso_local global i8 0, align 1
@TYPE_DISK = common dso_local global i8 0, align 1
@TYPE_MOD = common dso_local global i8 0, align 1
@TYPE_TAPE = common dso_local global i8 0, align 1
@TYPE_PROCESSOR = common dso_local global i8 0, align 1
@TYPE_SCANNER = common dso_local global i8 0, align 1
@TYPE_MEDIUM_CHANGER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i32*, i32*)* @device_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_exists(%struct.Scsi_Host* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @device_inquiry(%struct.Scsi_Host* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %176

16:                                               ; preds = %4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = call %struct.TYPE_2__* @ld(%struct.Scsi_Host* %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @TYPE_ROM, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load i8, i8* @TYPE_ROM, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 2048, i32* %34, align 4
  store i32 1, i32* %5, align 4
  br label %176

35:                                               ; preds = %16
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @TYPE_WORM, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i8, i8* @TYPE_WORM, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 2048, i32* %46, align 4
  store i32 1, i32* %5, align 4
  br label %176

47:                                               ; preds = %35
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @TYPE_DISK, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %47
  %55 = load i8, i8* @TYPE_DISK, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @read_capacity(%struct.Scsi_Host* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %54
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = add nsw i32 %66, %71
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 5
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 16
  %78 = add nsw i32 %72, %77
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 24
  %84 = add nsw i32 %78, %83
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  store i32 1, i32* %5, align 4
  br label %176

86:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %176

87:                                               ; preds = %47
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @TYPE_MOD, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %87
  %95 = load i8, i8* @TYPE_MOD, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @read_capacity(%struct.Scsi_Host* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 7
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 8
  %112 = add nsw i32 %106, %111
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 5
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 16
  %118 = add nsw i32 %112, %117
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl i32 %122, 24
  %124 = add nsw i32 %118, %123
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  store i32 1, i32* %5, align 4
  br label %176

126:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %176

127:                                              ; preds = %87
  %128 = load i8*, i8** %10, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @TYPE_TAPE, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i8, i8* @TYPE_TAPE, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 0, i32* %138, align 4
  store i32 1, i32* %5, align 4
  br label %176

139:                                              ; preds = %127
  %140 = load i8*, i8** %10, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @TYPE_PROCESSOR, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i8, i8* @TYPE_PROCESSOR, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %8, align 8
  store i32 0, i32* %150, align 4
  store i32 1, i32* %5, align 4
  br label %176

151:                                              ; preds = %139
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @TYPE_SCANNER, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load i8, i8* @TYPE_SCANNER, align 1
  %160 = zext i8 %159 to i32
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %8, align 8
  store i32 0, i32* %162, align 4
  store i32 1, i32* %5, align 4
  br label %176

163:                                              ; preds = %151
  %164 = load i8*, i8** %10, align 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* @TYPE_MEDIUM_CHANGER, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i8, i8* @TYPE_MEDIUM_CHANGER, align 1
  %172 = zext i8 %171 to i32
  %173 = load i32*, i32** %9, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 0, i32* %174, align 4
  store i32 1, i32* %5, align 4
  br label %176

175:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %170, %158, %146, %134, %126, %102, %86, %62, %42, %30, %15
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @device_inquiry(%struct.Scsi_Host*, i32) #1

declare dso_local %struct.TYPE_2__* @ld(%struct.Scsi_Host*) #1

declare dso_local i64 @read_capacity(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
