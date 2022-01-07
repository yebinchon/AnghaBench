; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_register_trapped_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_register_trapped_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapped_io = type { i32, i32, i32, i64, %struct.resource* }
%struct.resource = type { i64, i64, i64 }
%struct.page = type { i32 }

@TRAPPED_PAGES_MAX = common dso_local global i32 0, align 4
@trapped_io_disable = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"trapped io 0x%08lx overrides %s 0x%08lx\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@IO_TRAPPED_MAGIC = common dso_local global i32 0, align 4
@trapped_lock = common dso_local global i32 0, align 4
@trapped_io = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@trapped_mem = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to install trapped io filter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_trapped_io(%struct.trapped_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapped_io*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trapped_io* %0, %struct.trapped_io** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @TRAPPED_PAGES_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.page*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @trapped_io_disable, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %180

20:                                               ; preds = %1
  %21 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %22 = ptrtoint %struct.trapped_io* %21 to i64
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = and i64 %22, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %178

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %33 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %38 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %37, i32 0, i32 4
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %39, i64 %41
  store %struct.resource* %42, %struct.resource** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i64 @roundup(i64 %50, i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @hweight_long(i64 %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %178

68:                                               ; preds = %63
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @PAGE_SHIFT, align 8
  %71 = lshr i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @TRAPPED_PAGES_MAX, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %178

77:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %88, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %84 = call %struct.page* @virt_to_page(%struct.trapped_io* %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %86
  store %struct.page* %84, %struct.page** %87, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %78

91:                                               ; preds = %78
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @VM_MAP, align 4
  %94 = load i32, i32* @PAGE_NONE, align 4
  %95 = call i64 @vmap(%struct.page** %15, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %97 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %99 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  br label %178

103:                                              ; preds = %91
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %147, %103
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %107 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %104
  %111 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %112 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %111, i32 0, i32 4
  %113 = load %struct.resource*, %struct.resource** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %113, i64 %115
  store %struct.resource* %116, %struct.resource** %4, align 8
  %117 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %118 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = add i64 %119, %120
  %122 = load %struct.resource*, %struct.resource** %4, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @IORESOURCE_IO, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %124, %126
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %131 = load %struct.resource*, %struct.resource** %4, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %121, i8* %130, i64 %133)
  %135 = load %struct.resource*, %struct.resource** %4, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.resource*, %struct.resource** %4, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = add nsw i64 %141, 1
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = call i64 @roundup(i64 %142, i32 %143)
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %110
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %104

150:                                              ; preds = %104
  %151 = load i32, i32* @IO_TRAPPED_MAGIC, align 4
  %152 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %153 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %155 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %154, i32 0, i32 1
  %156 = call i32 @INIT_LIST_HEAD(i32* %155)
  %157 = call i32 @spin_lock_irq(i32* @trapped_lock)
  %158 = load i64, i64* %6, align 8
  %159 = load i32, i32* @IORESOURCE_IO, align 4
  %160 = sext i32 %159 to i64
  %161 = and i64 %158, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %150
  %164 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %165 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %164, i32 0, i32 1
  %166 = call i32 @list_add(i32* %165, i32* @trapped_io)
  br label %167

167:                                              ; preds = %163, %150
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @IORESOURCE_MEM, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.trapped_io*, %struct.trapped_io** %3, align 8
  %174 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %173, i32 0, i32 1
  %175 = call i32 @list_add(i32* %174, i32* @trapped_mem)
  br label %176

176:                                              ; preds = %172, %167
  %177 = call i32 @spin_unlock_irq(i32* @trapped_lock)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %180

178:                                              ; preds = %102, %76, %67, %28
  %179 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %180

180:                                              ; preds = %178, %176, %19
  %181 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @roundup(i64, i32) #2

declare dso_local i32 @hweight_long(i64) #2

declare dso_local %struct.page* @virt_to_page(%struct.trapped_io*) #2

declare dso_local i64 @vmap(%struct.page**, i32, i32, i32) #2

declare dso_local i32 @pr_info(i8*, i64, i8*, i64) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @pr_warning(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
