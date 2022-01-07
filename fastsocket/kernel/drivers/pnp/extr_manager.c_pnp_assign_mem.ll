; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_mem = type { i32, i64, i64, i64, i64 }
%struct.resource = type { i64, i64, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"  mem %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_MEM_WRITEABLE = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@IORESOURCE_MEM_CACHEABLE = common dso_local global i32 0, align 4
@IORESOURCE_CACHEABLE = common dso_local global i32 0, align 4
@IORESOURCE_MEM_RANGELENGTH = common dso_local global i32 0, align 4
@IORESOURCE_RANGELENGTH = common dso_local global i32 0, align 4
@IORESOURCE_MEM_SHADOWABLE = common dso_local global i32 0, align 4
@IORESOURCE_SHADOWABLE = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  mem %d disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"  couldn't assign mem %d (min %#llx max %#llx)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_mem*, i32)* @pnp_assign_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_mem(%struct.pnp_dev* %0, %struct.pnp_mem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_mem* %1, %struct.pnp_mem** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %10, i32 %11, i32 %12)
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load %struct.resource*, %struct.resource** %8, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.resource*, %struct.resource** %8, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22, i64 %25, i32 %28)
  store i32 0, i32* %4, align 4
  br label %187

30:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %31 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %32 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IORESOURCE_AUTO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %43 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IORESOURCE_MEM_WRITEABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* @IORESOURCE_READONLY, align 4
  %50 = load %struct.resource*, %struct.resource** %8, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %30
  %55 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %56 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IORESOURCE_MEM_CACHEABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @IORESOURCE_CACHEABLE, align 4
  %63 = load %struct.resource*, %struct.resource** %8, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %69 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IORESOURCE_MEM_RANGELENGTH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @IORESOURCE_RANGELENGTH, align 4
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %82 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IORESOURCE_MEM_SHADOWABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @IORESOURCE_SHADOWABLE, align 4
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %95 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %100 = load %struct.resource*, %struct.resource** %8, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %105 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %175

108:                                              ; preds = %93
  %109 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %110 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.resource*, %struct.resource** %8, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.resource*, %struct.resource** %8, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %118 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = sub nsw i64 %120, 1
  %122 = load %struct.resource*, %struct.resource** %8, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %173, %108
  %125 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %126 = load %struct.resource*, %struct.resource** %8, align 8
  %127 = call i32 @pnp_check_mem(%struct.pnp_dev* %125, %struct.resource* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %174

130:                                              ; preds = %124
  %131 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %132 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.resource*, %struct.resource** %8, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load %struct.resource*, %struct.resource** %8, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %142 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = sub nsw i64 %144, 1
  %146 = load %struct.resource*, %struct.resource** %8, align 8
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.resource*, %struct.resource** %8, align 8
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %152 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %130
  %156 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %157 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %155, %130
  %161 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %162 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %165 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %168 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %163, i64 %166, i64 %169)
  %171 = load i32, i32* @EBUSY, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %187

173:                                              ; preds = %155
  br label %124

174:                                              ; preds = %124
  br label %175

175:                                              ; preds = %174, %98
  %176 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %177 = load %struct.resource*, %struct.resource** %8, align 8
  %178 = getelementptr inbounds %struct.resource, %struct.resource* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.resource*, %struct.resource** %8, align 8
  %181 = getelementptr inbounds %struct.resource, %struct.resource* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.resource*, %struct.resource** %8, align 8
  %184 = getelementptr inbounds %struct.resource, %struct.resource* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %176, i64 %179, i64 %182, i32 %185)
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %175, %160, %16
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pnp_check_mem(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
