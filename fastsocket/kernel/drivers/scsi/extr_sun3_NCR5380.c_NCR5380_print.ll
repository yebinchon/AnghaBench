; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@CURRENT_SCSI_DATA_REG = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@BUS_AND_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"STATUS_REG: %02x \00", align 1
@signals = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0ABASR: %02x \00", align 1
@basrs = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"\0AICR: %02x \00", align 1
@icrs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"\0AMODE: %02x \00", align 1
@mrs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @NCR5380_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NCR5380_print(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @CURRENT_SCSI_DATA_REG, align 4
  %13 = call zeroext i8 @NCR5380_read(i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load i32, i32* @STATUS_REG, align 4
  %15 = call zeroext i8 @NCR5380_read(i32 %14)
  store i8 %15, i8* %3, align 1
  %16 = load i32, i32* @MODE_REG, align 4
  %17 = call zeroext i8 @NCR5380_read(i32 %16)
  store i8 %17, i8* %6, align 1
  %18 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %19 = call zeroext i8 @NCR5380_read(i32 %18)
  store i8 %19, i8* %7, align 1
  %20 = load i32, i32* @BUS_AND_STATUS_REG, align 4
  %21 = call zeroext i8 @NCR5380_read(i32 %20)
  store i8 %21, i8* %5, align 1
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8 0, i8* %8, align 1
  br label %27

27:                                               ; preds = %55, %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @signals, align 8
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @signals, align 8
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %37, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @signals, align 8
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i8, i8* %8, align 1
  %57 = add i8 %56, 1
  store i8 %57, i8* %8, align 1
  br label %27

58:                                               ; preds = %27
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i8 0, i8* %8, align 1
  br label %62

62:                                               ; preds = %90, %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basrs, align 8
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %62
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basrs, align 8
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @basrs, align 8
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %81, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i8, i8* %8, align 1
  %92 = add i8 %91, 1
  store i8 %92, i8* %8, align 1
  br label %62

93:                                               ; preds = %62
  %94 = load i8, i8* %7, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  store i8 0, i8* %8, align 1
  br label %97

97:                                               ; preds = %125, %93
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icrs, align 8
  %99 = load i8, i8* %8, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %97
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icrs, align 8
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %107, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @icrs, align 8
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %116, %105
  br label %125

125:                                              ; preds = %124
  %126 = load i8, i8* %8, align 1
  %127 = add i8 %126, 1
  store i8 %127, i8* %8, align 1
  br label %97

128:                                              ; preds = %97
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  store i8 0, i8* %8, align 1
  br label %132

132:                                              ; preds = %160, %128
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mrs, align 8
  %134 = load i8, i8* %8, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %132
  %141 = load i8, i8* %6, align 1
  %142 = zext i8 %141 to i32
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mrs, align 8
  %144 = load i8, i8* %8, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %142, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mrs, align 8
  %153 = load i8, i8* %8, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %151, %140
  br label %160

160:                                              ; preds = %159
  %161 = load i8, i8* %8, align 1
  %162 = add i8 %161, 1
  store i8 %162, i8* %8, align 1
  br label %132

163:                                              ; preds = %132
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @NCR5380_read(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
