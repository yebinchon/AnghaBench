; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i64*, i64*, i32*, i64*, i64*, %struct.scsi_cmnd*** }

@qcnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @atp870u_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atp_unit*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @scmd_channel(%struct.scsi_cmnd* %11)
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %18, i32 0)
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = call i32 @scmd_channel(%struct.scsi_cmnd* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  store i32 262144, i32* %25, align 8
  %26 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %26(%struct.scsi_cmnd* %27)
  store i32 0, i32* %3, align 4
  br label %190

28:                                               ; preds = %2
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %32, align 8
  store %struct.Scsi_Host* %33, %struct.Scsi_Host** %10, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.atp_unit*
  store %struct.atp_unit* %36, %struct.atp_unit** %9, align 8
  store i32 1, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = call i32 @scmd_id(%struct.scsi_cmnd* %38)
  %40 = shl i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %43 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %41, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  store i32 262144, i32* %53, align 8
  %54 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %54(%struct.scsi_cmnd* %55)
  store i32 0, i32* %3, align 4
  br label %190

56:                                               ; preds = %28
  %57 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %58 = icmp ne void (%struct.scsi_cmnd*)* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %60, void (%struct.scsi_cmnd*)** %62, align 8
  br label %68

63:                                               ; preds = %56
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %66(%struct.scsi_cmnd* %67)
  store i32 0, i32* %3, align 4
  br label %190

68:                                               ; preds = %59
  %69 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %70 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %78 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i8, i8* %6, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @qcnt, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %68
  %87 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %88 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i8, i8* %6, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %68
  %94 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %95 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i8, i8* %6, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %102 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i8, i8* %6, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %100, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %93
  %110 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %111 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i8, i8* %6, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load i64, i64* @qcnt, align 8
  %120 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %121 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i8, i8* %6, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %126

126:                                              ; preds = %118, %109
  %127 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %128 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i8, i8* %6, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  store i32 131072, i32* %136, align 8
  %137 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %137(%struct.scsi_cmnd* %138)
  store i32 0, i32* %3, align 4
  br label %190

139:                                              ; preds = %93
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %142 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %141, i32 0, i32 6
  %143 = load %struct.scsi_cmnd***, %struct.scsi_cmnd**** %142, align 8
  %144 = load i8, i8* %6, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct.scsi_cmnd**, %struct.scsi_cmnd*** %143, i64 %145
  %147 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %146, align 8
  %148 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %149 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i8, i8* %6, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %147, i64 %154
  store %struct.scsi_cmnd* %140, %struct.scsi_cmnd** %155, align 8
  %156 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %157 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i8, i8* %6, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 28
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @inb(i32 %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %139
  %168 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %169 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %168, i32 0, i32 4
  %170 = load i64*, i64** %169, align 8
  %171 = load i8, i8* %6, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %167
  %177 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %178 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %177, i32 0, i32 5
  %179 = load i64*, i64** %178, align 8
  %180 = load i8, i8* %6, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %176
  %186 = load %struct.atp_unit*, %struct.atp_unit** %9, align 8
  %187 = load i8, i8* %6, align 1
  %188 = call i32 @send_s870(%struct.atp_unit* %186, i8 zeroext %187)
  br label %189

189:                                              ; preds = %185, %176, %167, %139
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %126, %63, %51, %23
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @send_s870(%struct.atp_unit*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
