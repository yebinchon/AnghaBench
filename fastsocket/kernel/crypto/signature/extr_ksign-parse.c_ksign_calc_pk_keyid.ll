; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_calc_pk_keyid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_calc_pk_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ksign_public_key = type { i32, i32, i64, i32* }

@DSA_NPKEY = common dso_local global i32 0, align 4
@PUBKEY_ALGO_DSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shash_desc*, %struct.ksign_public_key*)* @ksign_calc_pk_keyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksign_calc_pk_keyid(%struct.shash_desc* %0, %struct.ksign_public_key* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca %struct.ksign_public_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store %struct.ksign_public_key* %1, %struct.ksign_public_key** %4, align 8
  %14 = load i32, i32* @DSA_NPKEY, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @DSA_NPKEY, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32, i32* @DSA_NPKEY, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32*, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @DSA_NPKEY, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %26 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 4
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 8, i32 6
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %68, %2
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %37 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mpi_get_nbits(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %17, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %48 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %20, i64 %55
  %57 = call i32* @mpi_get_buffer(i32 %53, i32* %56, i32* null)
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %23, i64 %59
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %20, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add i32 2, %64
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %35
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %31

71:                                               ; preds = %31
  %72 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %73 = call i32 @SHA1_putc(%struct.shash_desc* %72, i32 153)
  %74 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = lshr i32 %75, 8
  %77 = call i32 @SHA1_putc(%struct.shash_desc* %74, i32 %76)
  %78 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @SHA1_putc(%struct.shash_desc* %78, i32 %79)
  %81 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %82 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %87 = call i32 @SHA1_putc(%struct.shash_desc* %86, i32 3)
  br label %91

88:                                               ; preds = %71
  %89 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %90 = call i32 @SHA1_putc(%struct.shash_desc* %89, i32 4)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %93 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = ashr i32 %96, 24
  %98 = call i32 @SHA1_putc(%struct.shash_desc* %95, i32 %97)
  %99 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %100 = load i32, i32* %10, align 4
  %101 = ashr i32 %100, 16
  %102 = call i32 @SHA1_putc(%struct.shash_desc* %99, i32 %101)
  %103 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %104 = load i32, i32* %10, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 @SHA1_putc(%struct.shash_desc* %103, i32 %105)
  %107 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 0
  %110 = call i32 @SHA1_putc(%struct.shash_desc* %107, i32 %109)
  %111 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %112 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %141

115:                                              ; preds = %91
  %116 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %117 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %122 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ksign_public_key*, %struct.ksign_public_key** %4, align 8
  %125 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %123, %127
  %129 = sdiv i64 %128, 86400
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  br label %132

131:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %120
  %133 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %134 = load i32, i32* %13, align 4
  %135 = ashr i32 %134, 8
  %136 = call i32 @SHA1_putc(%struct.shash_desc* %133, i32 %135)
  %137 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %138 = load i32, i32* %13, align 4
  %139 = ashr i32 %138, 0
  %140 = call i32 @SHA1_putc(%struct.shash_desc* %137, i32 %139)
  br label %141

141:                                              ; preds = %132, %91
  %142 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %143 = load i32, i32* @PUBKEY_ALGO_DSA, align 4
  %144 = call i32 @SHA1_putc(%struct.shash_desc* %142, i32 %143)
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %178, %141
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %181

149:                                              ; preds = %145
  %150 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %17, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = lshr i32 %154, 8
  %156 = call i32 @SHA1_putc(%struct.shash_desc* %150, i32 %155)
  %157 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %17, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @SHA1_putc(%struct.shash_desc* %157, i32 %161)
  %163 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %23, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %20, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SHA1_write(%struct.shash_desc* %163, i32* %167, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %23, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @kfree(i32* %176)
  br label %178

178:                                              ; preds = %149
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %145

181:                                              ; preds = %145
  %182 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %182)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mpi_get_nbits(i32) #2

declare dso_local i32* @mpi_get_buffer(i32, i32*, i32*) #2

declare dso_local i32 @SHA1_putc(%struct.shash_desc*, i32) #2

declare dso_local i32 @SHA1_write(%struct.shash_desc*, i32*, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
