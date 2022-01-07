; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_match_prw_and_gpe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_match_prw_and_gpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_gpe_walk_info = type { %struct.acpi_gpe_block_info*, %struct.acpi_namespace_node* }
%struct.acpi_gpe_block_info = type { i64, i32, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %union.acpi_operand_object** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.acpi_namespace_node* }

@ev_match_prw_and_gpe = common dso_local global i32 0, align 4
@METHOD_NAME__PRW = common dso_local global i32 0, align 4
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@acpi_gbl_fadt_gpe_device = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_GPE_WAKE_ENABLED = common dso_local global i32 0, align 4
@ACPI_GPE_RUN_ENABLED = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_WAKE = common dso_local global i32 0, align 4
@ACPI_GPE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i8**)* @acpi_ev_match_prw_and_gpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_match_prw_and_gpe(i32 %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_gpe_walk_info*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca %struct.acpi_gpe_block_info*, align 8
  %13 = alloca %struct.acpi_namespace_node*, align 8
  %14 = alloca %struct.acpi_gpe_event_info*, align 8
  %15 = alloca %union.acpi_operand_object*, align 8
  %16 = alloca %union.acpi_operand_object*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.acpi_gpe_walk_info*
  store %struct.acpi_gpe_walk_info* %20, %struct.acpi_gpe_walk_info** %10, align 8
  %21 = load i32, i32* @ev_match_prw_and_gpe, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @METHOD_NAME__PRW, align 4
  %25 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %26 = call i32 @acpi_ut_evaluate_object(i32 %23, i32 %24, i32 %25, %union.acpi_operand_object** %15)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @AE_OK, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_8__*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %176

40:                                               ; preds = %33
  %41 = load %struct.acpi_gpe_walk_info*, %struct.acpi_gpe_walk_info** %10, align 8
  %42 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %41, i32 0, i32 1
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %42, align 8
  store %struct.acpi_namespace_node* %43, %struct.acpi_namespace_node** %11, align 8
  %44 = load %struct.acpi_gpe_walk_info*, %struct.acpi_gpe_walk_info** %10, align 8
  %45 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %44, i32 0, i32 0
  %46 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %45, align 8
  store %struct.acpi_gpe_block_info* %46, %struct.acpi_gpe_block_info** %12, align 8
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %49, align 8
  %51 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %50, i64 0
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %51, align 8
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %16, align 8
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %40
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_fadt_gpe_device, align 8
  store %struct.acpi_namespace_node* %60, %struct.acpi_namespace_node** %13, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %17, align 8
  br label %124

65:                                               ; preds = %40
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_5__*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %122

72:                                               ; preds = %65
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %102, label %78

78:                                               ; preds = %72
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %81, align 8
  %83 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %82, i64 0
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %83, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_5__*
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %78
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %93, align 8
  %95 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %94, i64 1
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %95, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90, %78, %72
  br label %176

103:                                              ; preds = %90
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %106, align 8
  %108 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %107, i64 0
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %108, align 8
  %110 = bitcast %union.acpi_operand_object* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %111, align 8
  store %struct.acpi_namespace_node* %112, %struct.acpi_namespace_node** %13, align 8
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %114 = bitcast %union.acpi_operand_object* %113 to %struct.TYPE_8__*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %115, align 8
  %117 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %116, i64 1
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %117, align 8
  %119 = bitcast %union.acpi_operand_object* %118 to %struct.TYPE_7__*
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %17, align 8
  br label %123

122:                                              ; preds = %65
  br label %176

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %59
  %125 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %126 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %127 = icmp eq %struct.acpi_namespace_node* %125, %126
  br i1 %127, label %128, label %175

128:                                              ; preds = %124
  %129 = load i64, i64* %17, align 8
  %130 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %12, align 8
  %131 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sge i64 %129, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %128
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %12, align 8
  %137 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %12, align 8
  %140 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %138, %143
  %145 = icmp slt i64 %135, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %134
  %147 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %12, align 8
  %148 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %147, i32 0, i32 2
  %149 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %148, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %12, align 8
  %152 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  %155 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %149, i64 %154
  store %struct.acpi_gpe_event_info* %155, %struct.acpi_gpe_event_info** %14, align 8
  %156 = load i32, i32* @ACPI_GPE_WAKE_ENABLED, align 4
  %157 = load i32, i32* @ACPI_GPE_RUN_ENABLED, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %14, align 8
  %161 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %14, align 8
  %165 = load i32, i32* @ACPI_GPE_TYPE_WAKE, align 4
  %166 = call i32 @acpi_ev_set_gpe_type(%struct.acpi_gpe_event_info* %164, i32 %165)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i64 @ACPI_FAILURE(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %146
  br label %176

171:                                              ; preds = %146
  %172 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %14, align 8
  %173 = load i32, i32* @ACPI_GPE_DISABLE, align 4
  %174 = call i32 @acpi_ev_update_gpe_enable_masks(%struct.acpi_gpe_event_info* %172, i32 %173)
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %171, %134, %128, %124
  br label %176

176:                                              ; preds = %175, %170, %122, %102, %39
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %178 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %177)
  %179 = load i32, i32* @AE_OK, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_evaluate_object(i32, i32, i32, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_set_gpe_type(%struct.acpi_gpe_event_info*, i32) #1

declare dso_local i32 @acpi_ev_update_gpe_enable_masks(%struct.acpi_gpe_event_info*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
