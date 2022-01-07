; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__, %struct.ata_port* }
%struct.TYPE_6__ = type { i32, %struct.ata_link* }
%struct.ata_link = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_port = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)*, i64 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@ATA_FLAG_PIO_DMA = common dso_local global i32 0, align 4
@ATA_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"waking up from sleep\00", align 1
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 8
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.ata_link*, %struct.ata_link** %12, align 8
  store %struct.ata_link* %13, %struct.ata_link** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %26 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ata_tag_valid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ false, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ata_is_ncq(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %39 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = and i32 %40, %44
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %48 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %37
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %62 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %79

65:                                               ; preds = %30
  %66 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %67 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WARN_ON_ONCE(i32 %68)
  %70 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %75 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %78 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %65, %56
  %80 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %86 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %90 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @ata_is_data(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %79
  %97 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %98 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %103 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %106, %101, %96
  %113 = phi i1 [ true, %101 ], [ true, %96 ], [ %111, %106 ]
  br label %114

114:                                              ; preds = %112, %79
  %115 = phi i1 [ false, %79 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @BUG_ON(i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @ata_is_dma(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @ata_is_pio(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %127 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ATA_FLAG_PIO_DMA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125, %114
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %134 = call i64 @ata_sg_setup(%struct.ata_queued_cmd* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %186

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %125, %121
  %139 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %140 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ATA_DFLAG_SLEEPING, align 4
  %145 = and i32 %143, %144
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %138
  %149 = load i32, i32* @ATA_EH_RESET, align 4
  %150 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %151 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 4
  %155 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %156 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %155, i32 0, i32 2
  %157 = call i32 @ata_ehi_push_desc(%struct.TYPE_8__* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %159 = call i32 @ata_link_abort(%struct.ata_link* %158)
  br label %195

160:                                              ; preds = %138
  %161 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %162 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %164, align 8
  %166 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %167 = call i32 %165(%struct.ata_queued_cmd* %166)
  %168 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %169 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %168, i32 0, i32 2
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %171, align 8
  %173 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %174 = call i32 %172(%struct.ata_queued_cmd* %173)
  %175 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %176 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %180 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %160
  br label %192

185:                                              ; preds = %160
  br label %195

186:                                              ; preds = %136
  %187 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %188 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %189 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %186, %184
  %193 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %194 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %193)
  br label %195

195:                                              ; preds = %192, %185, %148
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ata_tag_valid(i32) #1

declare dso_local i64 @ata_is_ncq(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ata_is_data(i32) #1

declare dso_local i64 @ata_is_dma(i32) #1

declare dso_local i64 @ata_is_pio(i32) #1

declare dso_local i64 @ata_sg_setup(%struct.ata_queued_cmd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ata_link_abort(%struct.ata_link*) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
