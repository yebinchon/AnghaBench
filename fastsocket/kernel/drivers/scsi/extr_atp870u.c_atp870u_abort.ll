; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i32*, %struct.TYPE_4__**, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [31 x i8] c" atp870u: abort Channel = %x \0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"working=%x last_cmd=%x \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" quhdu=%x quendu=%x \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" r%2x=%2x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" r1c=%2x\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" r1f=%2x in_snd=%2x \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" d00=%2x\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" d02=%2x\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\0A que cdb= \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %2x \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" last_lenu= %x \00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @atp870u_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atp_unit*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %9, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.atp_unit*
  store %struct.atp_unit* %17, %struct.atp_unit** %8, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call zeroext i8 @scmd_channel(%struct.scsi_cmnd* %18)
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %24 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %31 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %36)
  %38 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %39 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %46 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %51)
  %53 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %54 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  store i8 0, i8* %3, align 1
  br label %60

60:                                               ; preds = %71, %1
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 24
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = call i32 @inb(i32 %67)
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i8, i8* %3, align 1
  %73 = add i8 %72, 1
  store i8 %73, i8* %3, align 1
  br label %60

74:                                               ; preds = %60
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 4
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @inb(i32 %77)
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 3
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @inb(i32 %82)
  %84 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %85 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %90)
  %92 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %93 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i8, i8* %5, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @inb(i32 %99)
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 2
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @inb(i32 %104)
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  store i8 0, i8* %3, align 1
  br label %107

107:                                              ; preds = %175, %74
  %108 = load i8, i8* %3, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %109, 16
  br i1 %110, label %111, label %178

111:                                              ; preds = %107
  %112 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %113 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %113, align 8
  %115 = load i8, i8* %5, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i8, i8* %3, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %122, align 8
  %124 = icmp ne %struct.scsi_cmnd* %123, null
  br i1 %124, label %125, label %174

125:                                              ; preds = %111
  %126 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %127 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %127, align 8
  %129 = load i8, i8* %5, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %128, i64 %130
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i8, i8* %3, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %136, align 8
  store %struct.scsi_cmnd* %137, %struct.scsi_cmnd** %6, align 8
  %138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8 0, i8* %4, align 1
  br label %139

139:                                              ; preds = %156, %125
  %140 = load i8, i8* %4, align 1
  %141 = zext i8 %140 to i32
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 8
  %145 = zext i8 %144 to i32
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %139
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %149 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i8, i8* %4, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %147
  %157 = load i8, i8* %4, align 1
  %158 = add i8 %157, 1
  store i8 %158, i8* %4, align 1
  br label %139

159:                                              ; preds = %139
  %160 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %161 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %161, align 8
  %163 = load i8, i8* %5, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %162, i64 %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i8, i8* %3, align 1
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %159, %111
  br label %175

175:                                              ; preds = %174
  %176 = load i8, i8* %3, align 1
  %177 = add i8 %176, 1
  store i8 %177, i8* %3, align 1
  br label %107

178:                                              ; preds = %107
  %179 = load i32, i32* @SUCCESS, align 4
  ret i32 %179
}

declare dso_local zeroext i8 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
