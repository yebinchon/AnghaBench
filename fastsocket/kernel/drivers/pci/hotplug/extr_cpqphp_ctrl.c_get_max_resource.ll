; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_get_max_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_get_max_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { i32, i32, %struct.pci_resource* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_resource* (%struct.pci_resource**, i32)* @get_max_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_resource* @get_max_resource(%struct.pci_resource** %0, i32 %1) #0 {
  %3 = alloca %struct.pci_resource*, align 8
  %4 = alloca %struct.pci_resource**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_resource*, align 8
  %7 = alloca %struct.pci_resource*, align 8
  %8 = alloca %struct.pci_resource*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_resource** %0, %struct.pci_resource*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %11 = call i64 @cpqhp_resource_sort_and_combine(%struct.pci_resource** %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %207

14:                                               ; preds = %2
  %15 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %16 = call i64 @sort_by_max_size(%struct.pci_resource** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %207

19:                                               ; preds = %14
  %20 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %21 = load %struct.pci_resource*, %struct.pci_resource** %20, align 8
  store %struct.pci_resource* %21, %struct.pci_resource** %6, align 8
  br label %22

22:                                               ; preds = %201, %19
  %23 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %24 = icmp ne %struct.pci_resource* %23, null
  br i1 %24, label %25, label %205

25:                                               ; preds = %22
  %26 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %27 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %201

32:                                               ; preds = %25
  %33 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %34 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %32
  %41 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %42 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = or i32 %43, %45
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %49 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %53 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = sub nsw i32 %50, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %201

60:                                               ; preds = %40
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.pci_resource* @kmalloc(i32 16, i32 %61)
  store %struct.pci_resource* %62, %struct.pci_resource** %8, align 8
  %63 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %64 = icmp ne %struct.pci_resource* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %207

66:                                               ; preds = %60
  %67 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %68 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %71 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %74 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %78 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %81 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %83 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %86 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %90 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %89, i32 0, i32 2
  %91 = load %struct.pci_resource*, %struct.pci_resource** %90, align 8
  %92 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %93 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %92, i32 0, i32 2
  store %struct.pci_resource* %91, %struct.pci_resource** %93, align 8
  %94 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %95 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %96 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %95, i32 0, i32 2
  store %struct.pci_resource* %94, %struct.pci_resource** %96, align 8
  br label %97

97:                                               ; preds = %66, %32
  %98 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %99 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %102 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %158

109:                                              ; preds = %97
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.pci_resource* @kmalloc(i32 16, i32 %110)
  store %struct.pci_resource* %111, %struct.pci_resource** %8, align 8
  %112 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %113 = icmp ne %struct.pci_resource* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %207

115:                                              ; preds = %109
  %116 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %117 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %120 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = xor i32 %124, -1
  %126 = and i32 %122, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %129 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %131 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %134 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %138 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %142 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %144 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %147 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %151 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %150, i32 0, i32 2
  %152 = load %struct.pci_resource*, %struct.pci_resource** %151, align 8
  %153 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %154 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %153, i32 0, i32 2
  store %struct.pci_resource* %152, %struct.pci_resource** %154, align 8
  %155 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %156 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %157 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %156, i32 0, i32 2
  store %struct.pci_resource* %155, %struct.pci_resource** %157, align 8
  br label %158

158:                                              ; preds = %115, %97
  %159 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %160 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %201

165:                                              ; preds = %158
  %166 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %167 = load %struct.pci_resource*, %struct.pci_resource** %166, align 8
  store %struct.pci_resource* %167, %struct.pci_resource** %7, align 8
  %168 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %169 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %170 = icmp eq %struct.pci_resource* %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %173 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %172, i32 0, i32 2
  %174 = load %struct.pci_resource*, %struct.pci_resource** %173, align 8
  %175 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  store %struct.pci_resource* %174, %struct.pci_resource** %175, align 8
  br label %198

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %188, %176
  %178 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %179 = icmp ne %struct.pci_resource* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %182 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %181, i32 0, i32 2
  %183 = load %struct.pci_resource*, %struct.pci_resource** %182, align 8
  %184 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %185 = icmp ne %struct.pci_resource* %183, %184
  br label %186

186:                                              ; preds = %180, %177
  %187 = phi i1 [ false, %177 ], [ %185, %180 ]
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  %189 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %190 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %189, i32 0, i32 2
  %191 = load %struct.pci_resource*, %struct.pci_resource** %190, align 8
  store %struct.pci_resource* %191, %struct.pci_resource** %7, align 8
  br label %177

192:                                              ; preds = %186
  %193 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %194 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %193, i32 0, i32 2
  %195 = load %struct.pci_resource*, %struct.pci_resource** %194, align 8
  %196 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %197 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %196, i32 0, i32 2
  store %struct.pci_resource* %195, %struct.pci_resource** %197, align 8
  br label %198

198:                                              ; preds = %192, %171
  %199 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %200 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %199, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %200, align 8
  br label %205

201:                                              ; preds = %164, %59, %31
  %202 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %203 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %202, i32 0, i32 2
  %204 = load %struct.pci_resource*, %struct.pci_resource** %203, align 8
  store %struct.pci_resource* %204, %struct.pci_resource** %6, align 8
  br label %22

205:                                              ; preds = %198, %22
  %206 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  store %struct.pci_resource* %206, %struct.pci_resource** %3, align 8
  br label %207

207:                                              ; preds = %205, %114, %65, %18, %13
  %208 = load %struct.pci_resource*, %struct.pci_resource** %3, align 8
  ret %struct.pci_resource* %208
}

declare dso_local i64 @cpqhp_resource_sort_and_combine(%struct.pci_resource**) #1

declare dso_local i64 @sort_by_max_size(%struct.pci_resource**) #1

declare dso_local %struct.pci_resource* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
