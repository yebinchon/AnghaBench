; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_layout_subdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_generate_layout_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.csr1212_keyval*, %struct.csr1212_keyval*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.csr1212_keyval* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.csr1212_keyval*, %struct.csr1212_dentry* }
%struct.TYPE_6__ = type { i64, i32 }

@CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID = common dso_local global i64 0, align 8
@CSR1212_KV_ID_EXTENDED_KEY = common dso_local global i64 0, align 8
@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_keyval*, %struct.csr1212_keyval**)* @csr1212_generate_layout_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_generate_layout_subdir(%struct.csr1212_keyval* %0, %struct.csr1212_keyval** %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval**, align 8
  %5 = alloca %struct.csr1212_dentry*, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  %7 = alloca %struct.csr1212_keyval*, align 8
  %8 = alloca %struct.csr1212_keyval*, align 8
  %9 = alloca i32, align 4
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %3, align 8
  store %struct.csr1212_keyval** %1, %struct.csr1212_keyval*** %4, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %7, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %11 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %13, align 8
  store %struct.csr1212_dentry* %14, %struct.csr1212_dentry** %5, align 8
  br label %15

15:                                               ; preds = %162, %2
  %16 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %17 = icmp ne %struct.csr1212_dentry* %16, null
  br i1 %17, label %18, label %166

18:                                               ; preds = %15
  %19 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %20 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %19, i32 0, i32 0
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %20, align 8
  store %struct.csr1212_keyval* %21, %struct.csr1212_keyval** %6, align 8
  br label %22

22:                                               ; preds = %157, %18
  %23 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %24 = icmp ne %struct.csr1212_keyval* %23, null
  br i1 %24, label %25, label %161

25:                                               ; preds = %22
  %26 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %27 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %34 = icmp eq %struct.csr1212_keyval* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %36, %struct.csr1212_keyval** %7, align 8
  br label %51

37:                                               ; preds = %32
  %38 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %39 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  %43 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %48, %struct.csr1212_keyval** %7, align 8
  br label %50

49:                                               ; preds = %37
  br label %157

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %35
  br label %80

52:                                               ; preds = %25
  %53 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %54 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CSR1212_KV_ID_EXTENDED_KEY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %61 = icmp eq %struct.csr1212_keyval* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %63, %struct.csr1212_keyval** %8, align 8
  br label %78

64:                                               ; preds = %59
  %65 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %66 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %70 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  store %struct.csr1212_keyval* %75, %struct.csr1212_keyval** %8, align 8
  br label %77

76:                                               ; preds = %64
  br label %157

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %84 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %87 [
    i32 129, label %88
    i32 131, label %88
    i32 128, label %89
    i32 130, label %89
  ]

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %80, %80, %87
  br label %156

89:                                               ; preds = %80, %80
  %90 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %91 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %90, i32 0, i32 1
  %92 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %91, align 8
  %93 = icmp ne %struct.csr1212_keyval* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %96 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %95, i32 0, i32 1
  %97 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %96, align 8
  %98 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %97, i32 0, i32 0
  %99 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %98, align 8
  %100 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %101 = icmp eq %struct.csr1212_keyval* %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %104 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %103, i32 0, i32 0
  %105 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %104, align 8
  %106 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %107 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %106, i32 0, i32 1
  %108 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %107, align 8
  %109 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %108, i32 0, i32 0
  store %struct.csr1212_keyval* %105, %struct.csr1212_keyval** %109, align 8
  br label %110

110:                                              ; preds = %102, %94, %89
  %111 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %112 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %111, i32 0, i32 0
  %113 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %112, align 8
  %114 = icmp ne %struct.csr1212_keyval* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %117 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %116, i32 0, i32 0
  %118 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %117, align 8
  %119 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %118, i32 0, i32 1
  %120 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %119, align 8
  %121 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %122 = icmp eq %struct.csr1212_keyval* %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %125 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %124, i32 0, i32 1
  %126 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %125, align 8
  %127 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %128 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %127, i32 0, i32 0
  %129 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %128, align 8
  %130 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %129, i32 0, i32 1
  store %struct.csr1212_keyval* %126, %struct.csr1212_keyval** %130, align 8
  br label %131

131:                                              ; preds = %123, %115, %110
  %132 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %133 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CSR1212_KV_ID_EXTENDED_ROM, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %140 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 8
  br label %156

143:                                              ; preds = %131
  %144 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %145 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %144, i32 0, i32 0
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %145, align 8
  %146 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %4, align 8
  %147 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %146, align 8
  %148 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %149 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %148, i32 0, i32 1
  store %struct.csr1212_keyval* %147, %struct.csr1212_keyval** %149, align 8
  %150 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %151 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %4, align 8
  %152 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %151, align 8
  %153 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %152, i32 0, i32 0
  store %struct.csr1212_keyval* %150, %struct.csr1212_keyval** %153, align 8
  %154 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %155 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %4, align 8
  store %struct.csr1212_keyval* %154, %struct.csr1212_keyval** %155, align 8
  br label %156

156:                                              ; preds = %143, %138, %88
  br label %157

157:                                              ; preds = %156, %76, %49
  %158 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %159 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %158, i32 0, i32 4
  %160 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %159, align 8
  store %struct.csr1212_keyval* %160, %struct.csr1212_keyval** %6, align 8
  br label %22

161:                                              ; preds = %22
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %164 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %163, i32 0, i32 1
  %165 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %164, align 8
  store %struct.csr1212_dentry* %165, %struct.csr1212_dentry** %5, align 8
  br label %15

166:                                              ; preds = %15
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
