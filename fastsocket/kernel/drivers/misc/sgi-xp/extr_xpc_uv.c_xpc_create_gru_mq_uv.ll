; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_create_gru_mq_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_create_gru_mq_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_gru_mq_uv = type { i64, %struct.xpc_gru_mq_uv*, i64, i32, i32, i32 }
%struct.page = type { i32 }
%struct.uv_IO_APIC_route_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"xpc_create_gru_mq_uv() failed to kmalloc() a xpc_gru_mq_uv structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"xpc_create_gru_mq_uv() failed to kmalloc() a gru_message_queue_desc structure\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_THISNODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"xpc_create_gru_mq_uv() failed to alloc %d bytes of memory on nid=%d for GRU mq\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"request_irq(irq=%d) returned error=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"gru_create_message_queue() returned error=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xpc_gru_mq_uv* (i32, i32, i8*, i32)* @xpc_create_gru_mq_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xpc_gru_mq_uv* @xpc_create_gru_mq_uv(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xpc_gru_mq_uv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.xpc_gru_mq_uv*, align 8
  %17 = alloca %struct.uv_IO_APIC_route_entry*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.xpc_gru_mq_uv* @kmalloc(i32 40, i32 %18)
  store %struct.xpc_gru_mq_uv* %19, %struct.xpc_gru_mq_uv** %16, align 8
  %20 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %21 = icmp eq %struct.xpc_gru_mq_uv* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @xpc_part, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %183

27:                                               ; preds = %4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.xpc_gru_mq_uv* @kzalloc(i32 4, i32 %28)
  %30 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %31 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %30, i32 0, i32 1
  store %struct.xpc_gru_mq_uv* %29, %struct.xpc_gru_mq_uv** %31, align 8
  %32 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %33 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %32, i32 0, i32 1
  %34 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %33, align 8
  %35 = icmp eq %struct.xpc_gru_mq_uv* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @xpc_part, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %180

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @get_order(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %49 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %51 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 1, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @uv_cpu_to_blade_id(i32 %55)
  %57 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %58 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cpu_to_node(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* @__GFP_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @GFP_THISNODE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = call %struct.page* @alloc_pages_exact_node(i32 %61, i32 %66, i32 %67)
  store %struct.page* %68, %struct.page** %15, align 8
  %69 = load %struct.page*, %struct.page** %15, align 8
  %70 = icmp eq %struct.page* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %41
  %72 = load i32, i32* @xpc_part, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %175

78:                                               ; preds = %41
  %79 = load %struct.page*, %struct.page** %15, align 8
  %80 = call i64 @page_address(%struct.page* %79)
  %81 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %82 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %84 = call i32 @xpc_gru_mq_watchlist_alloc_uv(%struct.xpc_gru_mq_uv* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %169

88:                                               ; preds = %78
  %89 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @xpc_get_gru_mq_irq_uv(%struct.xpc_gru_mq_uv* %89, i32 %90, i8* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %166

96:                                               ; preds = %88
  %97 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %98 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @request_irq(i32 %99, i32 %100, i32 0, i8* %101, i32* null)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %96
  %106 = load i32, i32* @xpc_part, align 4
  %107 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %108 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 0, %110
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %111)
  br label %163

113:                                              ; preds = %96
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @uv_cpu_to_pnode(i32 %114)
  %116 = call i32 @UV_PNODE_TO_NASID(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %118 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %117, i32 0, i32 4
  %119 = bitcast i32* %118 to %struct.uv_IO_APIC_route_entry*
  store %struct.uv_IO_APIC_route_entry* %119, %struct.uv_IO_APIC_route_entry** %17, align 8
  %120 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %121 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %120, i32 0, i32 1
  %122 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %121, align 8
  %123 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %124 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %17, align 8
  %129 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %17, align 8
  %132 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @gru_create_message_queue(%struct.xpc_gru_mq_uv* %122, i64 %125, i32 %126, i32 %127, i32 %130, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %113
  %138 = load i32, i32* @xpc_part, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %158

143:                                              ; preds = %113
  %144 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %145 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @xp_pa(i64 %146)
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @xp_expand_memprotect(i32 %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @xpSuccess, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load i32, i32* @EACCES, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  br label %158

156:                                              ; preds = %143
  %157 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  store %struct.xpc_gru_mq_uv* %157, %struct.xpc_gru_mq_uv** %5, align 8
  br label %186

158:                                              ; preds = %153, %137
  %159 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %160 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @free_irq(i32 %161, i32* null)
  br label %163

163:                                              ; preds = %158, %105
  %164 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %165 = call i32 @xpc_release_gru_mq_irq_uv(%struct.xpc_gru_mq_uv* %164)
  br label %166

166:                                              ; preds = %163, %95
  %167 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %168 = call i32 @xpc_gru_mq_watchlist_free_uv(%struct.xpc_gru_mq_uv* %167)
  br label %169

169:                                              ; preds = %166, %87
  %170 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %171 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @free_pages(i64 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %71
  %176 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %177 = getelementptr inbounds %struct.xpc_gru_mq_uv, %struct.xpc_gru_mq_uv* %176, i32 0, i32 1
  %178 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %177, align 8
  %179 = call i32 @kfree(%struct.xpc_gru_mq_uv* %178)
  br label %180

180:                                              ; preds = %175, %36
  %181 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %16, align 8
  %182 = call i32 @kfree(%struct.xpc_gru_mq_uv* %181)
  br label %183

183:                                              ; preds = %180, %22
  %184 = load i32, i32* %11, align 4
  %185 = call %struct.xpc_gru_mq_uv* @ERR_PTR(i32 %184)
  store %struct.xpc_gru_mq_uv* %185, %struct.xpc_gru_mq_uv** %5, align 8
  br label %186

186:                                              ; preds = %183, %156
  %187 = load %struct.xpc_gru_mq_uv*, %struct.xpc_gru_mq_uv** %5, align 8
  ret %struct.xpc_gru_mq_uv* %187
}

declare dso_local %struct.xpc_gru_mq_uv* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.xpc_gru_mq_uv* @kzalloc(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @uv_cpu_to_blade_id(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.page* @alloc_pages_exact_node(i32, i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @xpc_gru_mq_watchlist_alloc_uv(%struct.xpc_gru_mq_uv*) #1

declare dso_local i32 @xpc_get_gru_mq_irq_uv(%struct.xpc_gru_mq_uv*, i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @UV_PNODE_TO_NASID(i32) #1

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @gru_create_message_queue(%struct.xpc_gru_mq_uv*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @xp_expand_memprotect(i32, i32) #1

declare dso_local i32 @xp_pa(i64) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @xpc_release_gru_mq_irq_uv(%struct.xpc_gru_mq_uv*) #1

declare dso_local i32 @xpc_gru_mq_watchlist_free_uv(%struct.xpc_gru_mq_uv*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.xpc_gru_mq_uv*) #1

declare dso_local %struct.xpc_gru_mq_uv* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
