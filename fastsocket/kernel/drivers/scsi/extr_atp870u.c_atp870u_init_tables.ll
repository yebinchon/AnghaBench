; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_init_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i32*, i32**, %struct.TYPE_2__**, i32***, i64*, i64*, i64*, i64*, i64*, i64*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"atp870u_init_tables fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @atp870u_init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_init_tables(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.atp_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to %struct.atp_unit*
  store %struct.atp_unit* %9, %struct.atp_unit** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %220, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %223

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %120, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %123

17:                                               ; preds = %14
  %18 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %19 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %22 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = call i32 @pci_alloc_consistent(i32 %20, i32 1024, i32* %31)
  %33 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %34 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 %32, i32* %43, align 8
  %44 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %45 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %17
  %58 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %60 = call i32 @atp870u_free_tables(%struct.Scsi_Host* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %224

63:                                               ; preds = %17
  %64 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %65 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %77 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32 %75, i32* %86, align 4
  %87 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %88 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 %91
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 32, i32* %97, align 8
  %98 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %99 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 127, i32* %108, align 4
  %109 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %110 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %111, i64 %113
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %63
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %14

123:                                              ; preds = %14
  %124 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %125 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %124, i32 0, i32 10
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 0, i64* %129, align 8
  %130 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %131 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %130, i32 0, i32 9
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 0, i64* %135, align 8
  %136 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %137 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 7, i32* %141, align 4
  %142 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %143 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %142, i32 0, i32 8
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 0, i64* %147, align 8
  %148 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %149 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %148, i32 0, i32 7
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 0, i64* %153, align 8
  %154 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %155 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 255, i32* %159, align 4
  %160 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %161 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %160, i32 0, i32 6
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  store i64 0, i64* %165, align 8
  %166 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %167 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %166, i32 0, i32 5
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 0, i64* %171, align 8
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %187, %123
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @qcnt, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %172
  %177 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %178 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %177, i32 0, i32 4
  %179 = load i32***, i32**** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32**, i32*** %179, i64 %181
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %172

190:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %216, %190
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 16
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  %195 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %196 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %195, i32 0, i32 3
  %197 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %197, i64 %199
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  store i32* null, i32** %205, align 8
  %206 = load %struct.atp_unit*, %struct.atp_unit** %4, align 8
  %207 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %206, i32 0, i32 2
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 4, i32* %215, align 4
  br label %216

216:                                              ; preds = %194
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %191

219:                                              ; preds = %191
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %10

223:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %57
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @atp870u_free_tables(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
