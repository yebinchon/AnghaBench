; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NinjaSCSI status\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Driver version:        $Revision: 1.23 $\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SCSI host No.:         %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"IRQ:                   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"sg_tablesize:          %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"burst transfer mode:   \00", align 1
@nsp_burst_mode = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"io8\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"io32\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"mem32\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SDTR status\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"id %d: \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"----- NinjaSCSI-3 host adapter\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" sync\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c" transfer %d.%dMB/s, offset %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @nsp_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %195

27:                                               ; preds = %6
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %20, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %19, align 8
  %35 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %20, align 4
  %38 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = sub nsw i64 %53, 1
  %55 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %45, i64 %54)
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = sub nsw i64 %66, 1
  %68 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %58, i64 %67)
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32, i32* @nsp_burst_mode, align 4
  switch i32 %74, label %81 [
    i32 132, label %75
    i32 133, label %77
    i32 131, label %79
  ]

75:                                               ; preds = %27
  %76 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %83

77:                                               ; preds = %27
  %78 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %83

79:                                               ; preds = %27
  %80 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %83

81:                                               ; preds = %27
  %82 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %79, %77, %75
  %84 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %18, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %168, %83
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %102)
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %171

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %110 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %168

115:                                              ; preds = %105
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %130 [
    i32 128, label %124
    i32 130, label %126
    i32 129, label %128
  ]

124:                                              ; preds = %115
  %125 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %132

126:                                              ; preds = %115
  %127 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %132

128:                                              ; preds = %115
  %129 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %132

130:                                              ; preds = %115
  %131 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %128, %126, %124
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %132
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 4
  %152 = sdiv i32 1000000, %151
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = sdiv i32 %153, 1000
  %155 = load i32, i32* %17, align 4
  %156 = srem i32 %155, 1000
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %154, i32 %156, i32 %164)
  br label %166

166:                                              ; preds = %142, %132
  %167 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %113
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %98

171:                                              ; preds = %98
  %172 = load i8*, i8** %15, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = ptrtoint i8* %172 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i8**, i8*** %10, align 8
  store i8* null, i8** %184, align 8
  store i32 0, i32* %7, align 4
  br label %195

185:                                              ; preds = %171
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @min(i32 %186, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = load i8*, i8** %9, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8**, i8*** %10, align 8
  store i8* %192, i8** %193, align 8
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %185, %183, %24
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @SPRINTF(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
