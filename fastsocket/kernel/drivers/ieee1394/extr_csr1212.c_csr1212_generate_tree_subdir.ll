; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_tree_subdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_tree_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.csr1212_keyval* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.csr1212_keyval*, %struct.csr1212_dentry* }

@CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_KEY = common dso_local global i32 0, align 4
@CSR1212_KV_KEY_ID_MASK = common dso_local global i32 0, align 4
@CSR1212_KV_KEY_SHIFT = common dso_local global i32 0, align 4
@CSR1212_KV_KEY_TYPE_MASK = common dso_local global i32 0, align 4
@CSR1212_KV_KEY_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csr1212_keyval*, i32*)* @csr1212_generate_tree_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csr1212_generate_tree_subdir(%struct.csr1212_keyval* %0, i32* %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csr1212_dentry*, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  %7 = alloca %struct.csr1212_keyval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csr1212_keyval*, align 8
  %10 = alloca i32, align 4
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %12 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %14, align 8
  store %struct.csr1212_dentry* %15, %struct.csr1212_dentry** %5, align 8
  br label %16

16:                                               ; preds = %165, %2
  %17 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %18 = icmp ne %struct.csr1212_dentry* %17, null
  br i1 %18, label %19, label %169

19:                                               ; preds = %16
  %20 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %21 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %20, i32 0, i32 0
  %22 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %21, align 8
  store %struct.csr1212_keyval* %22, %struct.csr1212_keyval** %9, align 8
  br label %23

23:                                               ; preds = %160, %19
  %24 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %25 = icmp ne %struct.csr1212_keyval* %24, null
  br i1 %25, label %26, label %164

26:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  %27 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %28 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %35 = icmp eq %struct.csr1212_keyval* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  store %struct.csr1212_keyval* %37, %struct.csr1212_keyval** %6, align 8
  br label %52

38:                                               ; preds = %33
  %39 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %40 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %44 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  store %struct.csr1212_keyval* %49, %struct.csr1212_keyval** %6, align 8
  br label %51

50:                                               ; preds = %38
  br label %160

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %36
  br label %81

53:                                               ; preds = %26
  %54 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %55 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %62 = icmp eq %struct.csr1212_keyval* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  store %struct.csr1212_keyval* %64, %struct.csr1212_keyval** %7, align 8
  br label %79

65:                                               ; preds = %60
  %66 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %67 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %71 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  store %struct.csr1212_keyval* %76, %struct.csr1212_keyval** %7, align 8
  br label %78

77:                                               ; preds = %65
  br label %160

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %83 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %127 [
    i32 129, label %86
    i32 131, label %92
    i32 128, label %97
    i32 130, label %112
  ]

86:                                               ; preds = %81
  %87 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %88 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  br label %129

92:                                               ; preds = %81
  %93 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %94 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  br label %129

97:                                               ; preds = %81
  %98 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %99 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %10, align 4
  %101 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %102 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 1, %104
  %106 = call i32 @quads_to_bytes(i32 %105)
  %107 = add nsw i32 %103, %106
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @bytes_to_quads(i32 %110)
  store i32 %111, i32* %10, align 4
  br label %129

112:                                              ; preds = %81
  %113 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %114 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %10, align 4
  %116 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %117 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 1, %119
  %121 = call i32 @quads_to_bytes(i32 %120)
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @bytes_to_quads(i32 %125)
  store i32 %126, i32* %10, align 4
  br label %129

127:                                              ; preds = %81
  %128 = call i32 @WARN_ON(i32 1)
  br label %129

129:                                              ; preds = %127, %112, %97, %92, %86
  %130 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %131 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CSR1212_KV_KEY_ID_MASK, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @CSR1212_KV_KEY_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %141 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CSR1212_KV_KEY_TYPE_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @CSR1212_KV_KEY_SHIFT, align 4
  %147 = load i32, i32* @CSR1212_KV_KEY_TYPE_SHIFT, align 4
  %148 = add nsw i32 %146, %147
  %149 = shl i32 %145, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @cpu_to_be32(i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %129, %77, %50
  %161 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %9, align 8
  %162 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %161, i32 0, i32 3
  %163 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %162, align 8
  store %struct.csr1212_keyval* %163, %struct.csr1212_keyval** %9, align 8
  br label %23

164:                                              ; preds = %23
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %167 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %166, i32 0, i32 1
  %168 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %167, align 8
  store %struct.csr1212_dentry* %168, %struct.csr1212_dentry** %5, align 8
  br label %16

169:                                              ; preds = %16
  ret void
}

declare dso_local i32 @quads_to_bytes(i32) #1

declare dso_local i32 @bytes_to_quads(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
