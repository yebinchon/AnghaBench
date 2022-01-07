; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EATA (Extended Attachment) PIO driver version: %d.%d%s\0A\00", align 1
@VER_MAJOR = common dso_local global i32 0, align 4
@VER_MINOR = common dso_local global i32 0, align 4
@VER_SUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"queued commands:     %10ld\0Aprocessed interrupts:%10ld\0A\00", align 1
@queue_counter = common dso_local global i32 0, align 4
@int_counter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\0Ascsi%-2d: HBA %.10s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Firmware revision: v%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"IO: PIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Base IO : %#.4x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Host Bus: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PCI \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"EISA\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ISA \00", align 1
@DBG_PROC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"2pos: %ld offset: %ld len: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"3pos: %ld offset: %ld len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i64, i32, i32)* @eata_pio_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata_pio_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %175

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* @VER_MAJOR, align 4
  %28 = load i32, i32* @VER_MINOR, align 4
  %29 = load i32, i32* @VER_SUB, align 4
  %30 = call i64 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* @queue_counter, align 4
  %40 = load i32, i32* @int_counter, align 4
  %41 = call i64 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %54 = call %struct.TYPE_2__* @SD(%struct.Scsi_Host* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %56)
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %67 = call %struct.TYPE_2__* @SD(%struct.Scsi_Host* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i64 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i64 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %102 = call %struct.TYPE_2__* @SD(%struct.Scsi_Host* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i8, i8* %103, align 8
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 80
  br i1 %106, label %107, label %108

107:                                              ; preds = %22
  br label %117

108:                                              ; preds = %22
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %110 = call %struct.TYPE_2__* @SD(%struct.Scsi_Host* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 8
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 69
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  br label %117

117:                                              ; preds = %108, %107
  %118 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %107 ], [ %116, %108 ]
  %119 = call i64 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  store i64 %127, i64* %16, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %11, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  %132 = load i64, i64* %16, align 8
  store i64 %132, i64* %15, align 8
  br label %133

133:                                              ; preds = %131, %117
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = icmp sgt i64 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %142

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* @DBG_PROC, align 4
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %144, i64 %145, i32 %146)
  %148 = call i32 @DBG(i32 %143, i32 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %15, align 8
  %152 = sub nsw i64 %150, %151
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8**, i8*** %10, align 8
  store i8* %153, i8** %154, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %15, align 8
  %157 = sub nsw i64 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %142
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %165, %142
  %168 = load i32, i32* @DBG_PROC, align 4
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 %169, i64 %170, i32 %171)
  %173 = call i32 @DBG(i32 %168, i32 %172)
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %167, %19
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @SD(%struct.Scsi_Host*) #1

declare dso_local i32 @DBG(i32, i32) #1

declare dso_local i32 @printk(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
